using System;
using System.Collections;
using UnityEngine;
using UnityEngine.AI;
using Random = UnityEngine.Random;

public class EnemyTank : BaseTank
{
    [SerializeField] private LayerMask _igunoreLayers;
    [SerializeField] private Bullet _bulletPrefab;
    [SerializeField] private Transform _bodyTransform;
    [SerializeField] private float _bodyRotateSpeed;
    [SerializeField] private Transform _fireTransform;
    [SerializeField] private Transform[] _extraFireTransforms;
    [SerializeField] private int _aimBounceChecks;
    [SerializeField] private float _minimumAngleForFire;
    [SerializeField] private float _minimumDistanceForFire;
    [SerializeField] private Vector2 _fireDelayRange;

    private Vector3 _aimDirection = Vector3.zero;
    private bool _canFire = false;
    private bool _placedBomb = false;
    private bool _playerInRange;
    private NavMeshAgent _navMeshAgent;
    private Vector3 startPosition;

    struct CheckResult
    {
        public bool hasHit;
        public float distance;
        public Vector3 direction;
        
        public CheckResult(bool hasHit = false, float distance = 0, Vector3 direction = new())
        {
            this.hasHit = hasHit;
            this.distance = distance;
            this.direction = direction;
        }
    }

    private void Awake()
    {
        startPosition = transform.position;
        
        _navMeshAgent = GetComponent<NavMeshAgent>();
    }

    private void Start()
    {
        if (_bulletPrefab)
        {
            StartCoroutine(FireLoop());
            StartCoroutine(FindTargetLoopEnumerator());
        }

        if(!_navMeshAgent)
            StartCoroutine(MoveLoop());
        
        DistanceBar.Instance.AddEnemy(this);
    }
    
    private void Update()
    {
        _aimDirection.y = 0.0f;
        
        if(_aimDirection.magnitude > 0)
            AimTowardsDirection(_aimDirection);

        _playerInRange = (Vector3.Distance(transform.position, GameManager.Player.transform.position) < _minimumDistanceForFire);

        if (_navMeshAgent)
        {
            if (!_placedBomb)
            {
                _navMeshAgent.SetDestination(GameManager.Player.transform.position);
                if (_navMeshAgent.hasPath && _navMeshAgent.remainingDistance <= _navMeshAgent.stoppingDistance)
                {
                    _navMeshAgent.SetDestination(startPosition);
                    _placedBomb = true;
                }
            }

        }
    }

    
    protected override void OnDeath()
    {
        DistanceBar.Instance.AddX(transform.position.x);

        base.OnDeath();
        Destroy(gameObject);
    }

    
    
    private IEnumerator FireLoop()
    {
        while (true)
        {
            yield return new WaitForSeconds(Random.Range(_fireDelayRange.x, _fireDelayRange.y));
            
            float angle = Vector3.Angle(_fireTransform.forward, _aimDirection);

            if (angle <= _minimumAngleForFire && _canFire && _playerInRange)
            {
                FireBullet(_fireTransform);
                
                foreach (Transform extraFireTransform in _extraFireTransforms)
                    FireBullet(extraFireTransform);
            }
        }
    }

    private IEnumerator MoveLoop()
    {
        while (true)
        {
            yield return new WaitForSeconds(Random.Range(1, 3));

            Quaternion targetRotation = _bodyTransform.rotation;
            targetRotation *= Quaternion.Euler(0, Random.Range(-45.0f,45.0f), 0);

            float alpha = 0.0f;
            while (alpha < 1.0f)
            {
                yield return new WaitForEndOfFrame();
                alpha += Time.deltaTime * _bodyRotateSpeed;
                alpha = Mathf.Min(alpha,1.0f);
                
                _bodyTransform.rotation = Quaternion.Slerp(_bodyTransform.rotation, targetRotation, alpha);
            }
        }
    }

    
    private IEnumerator FindTargetLoopEnumerator()
    {
        while (true)
        {
            // yield return new WaitForEndOfFrame();

            yield return new WaitUntil(() => _playerInRange);
            
            yield return new WaitUntil(() => GameManager.GetGameState == GameManager.GameState.InGame);
            
            CheckResult closestCheckResult = new CheckResult(false,float.MaxValue);
            for (int angle = 0; angle < 360; angle++)
            {
                yield return new WaitForEndOfFrame();
                
                float radian = Mathf.Deg2Rad * angle;
                Vector3 checkDirection = new Vector3(Mathf.Cos(radian), 0.0f,Mathf.Sin(radian));
                
                CheckResult check = CheckHit(checkDirection, _aimBounceChecks);
                if (check.hasHit)
                {
                    if (check.distance < closestCheckResult.distance)
                        closestCheckResult = check;
                }
            }

            if (closestCheckResult.hasHit)
            {
                _aimDirection = closestCheckResult.direction;
                _canFire = true;
            }
            else
            {
                _canFire = false;
            }
        }
    }
    
    private CheckResult CheckHit(Vector3 direction, int rayBounces)
    {
        CheckResult checkResult = new CheckResult(false,0.0f,direction);
        
        Vector3 fromPoint = _tankTopTransform.position;
        Vector3 rayDirection = direction;
        
        for (int bounceIndex = 0; bounceIndex < rayBounces; bounceIndex++)
        {
            Physics.Raycast(fromPoint, rayDirection,out var hit,Mathf.Infinity,~_igunoreLayers);
            
            if (hit.collider is null)
                return checkResult;
                
            checkResult.distance += hit.distance;

            if (hit.collider.CompareTag("Enemy"))
            {
                Debug.DrawLine(fromPoint,hit.point, Color.red,0.5f);

                checkResult.hasHit = false;
                return checkResult;
            }
            
            
            if (hit.collider.CompareTag("Player"))
            {
                Debug.DrawLine(fromPoint,hit.point, Color.green,0.5f);

                checkResult.hasHit = true;
                return checkResult;
            }
            
            // Debug.DrawLine(fromPoint,hit.point, Color.white);
            
            fromPoint = hit.point;
            rayDirection  = Vector3.Reflect(rayDirection, hit.normal).normalized;;
        }

        return checkResult;
    }

    void FireBullet(Transform fireTransform)
    {
        Bullet spawnedBullet = Instantiate(_bulletPrefab, fireTransform.position, fireTransform.rotation);
        if(spawnedBullet)
            spawnedBullet.SetTarget(GameManager.Player.transform);
    }
    
}
