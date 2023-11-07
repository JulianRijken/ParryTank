using System.Collections;
using UnityEngine;
using Random = UnityEngine.Random;

public class StationaryEnemyTank : BaseTank
{
    [Header("Stationary tank settings")]
    [SerializeField] private int _aimBounceChecks;
    [SerializeField] private float _minimumAngleForFire;
    [SerializeField] private float _minimumDistanceForFire;
    [SerializeField] private Bullet _bulletPrefab;
    [SerializeField] private Transform _fireTransform;
    [SerializeField] private Transform[] _extraFireTransforms;
    [SerializeField] private Vector2 _fireDelayRange;
    [SerializeField] private LayerMask _ignoreLayers;

    private bool _canFire;
    private bool _playerInRange;
    private Vector3 _aimDirection = Vector3.zero;

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
    
    private void Start()
    {
        if (_bulletPrefab)
        {
            StartCoroutine(FireLoop());
            StartCoroutine(FindTargetLoopEnumerator());
        }

        DistanceBar.Instance.AddEnemy(transform);

        _bodyTransform.rotation = Quaternion.AngleAxis(Random.value * 360.0f, Vector3.up);
        _topTransform.rotation = Quaternion.AngleAxis(Random.value * 360.0f, Vector3.up);
    }
    private void Update()
    {
        _aimDirection.y = 0.0f;
        
        if(_aimDirection.magnitude > 0)
            AimTowardsDirection(_aimDirection);

        _playerInRange = (Vector3.Distance(transform.position, GameManager.Player.transform.position) < _minimumDistanceForFire);
    }

    
    protected override void OnDeath()
    {
        base.OnDeath();
        
        DistanceBar.Instance.AddX(transform.position.x);
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
        
        Vector3 fromPoint = _topTransform.position;
        Vector3 rayDirection = direction;
        
        for (int bounceIndex = 0; bounceIndex < rayBounces; bounceIndex++)
        {
            Physics.Raycast(fromPoint, rayDirection,out var hit,Mathf.Infinity,~_ignoreLayers);
            
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
    
    
    #if UNITY_EDITOR
    private void OnDrawGizmosSelected()
    {
        Gizmos.color = new Color(1, 1, 1, 0.1f);
        Gizmos.DrawWireSphere(transform.position,_minimumDistanceForFire);
    }
#endif
    
}
