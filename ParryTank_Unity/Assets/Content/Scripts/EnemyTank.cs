using System.Collections;
using UnityEngine;
using Random = UnityEngine.Random;

public class EnemyTank : BaseTank
{
    [SerializeField] private LayerMask _igunoreLayers;
    [SerializeField] private GameObject _bulletPrefab;
    [SerializeField] private Transform _fireTransform;
    [SerializeField] private int _aimBounceChecks;
    [SerializeField] private float _minimumAngleForFire;
    [SerializeField] private float _minimumDistanceForFire;

    private Vector3 _aimDirection = Vector3.zero;
    private bool _canFire = false;
    private bool _playerInRange;

    struct CheckResult
    {
        public bool hasHit;
        public float distance;
        public Vector3 direction;
        
        public CheckResult(bool hasHit = false, float distance = 0, Vector3 direction = new Vector3())
        {
            this.hasHit = hasHit;
            this.distance = distance;
            this.direction = direction;
        }
    }
    
    private void Start()
    {
        StartCoroutine(FireLoop());
        StartCoroutine(FindTargetLoopEnumerator());
    }

    protected override void OnDeath()
    {
        base.OnDeath();
        Destroy(gameObject);
    }

    private IEnumerator FireLoop()
    {
        while (true)
        {
            yield return new WaitForSeconds(Random.Range(1.0f,2.0f));

            float angle = Vector3.Angle(_fireTransform.forward, _aimDirection);

            if (angle <= _minimumAngleForFire && _canFire && _playerInRange)
            {
                Instantiate(_bulletPrefab, _fireTransform.position, _fireTransform.rotation);
            }

            // else
            // {
            //     float radian = Random.Range(0.0f,Mathf.PI * 2.0f);
            //     _aimDirection = new Vector3(Mathf.Cos(radian), 0.0f,Mathf.Sin(radian));
            // }
        }
    }
    
    private void Update()
    {
        _aimDirection.y = 0.0f;
        
        if(_aimDirection.magnitude > 0)
            AimTowardsDirection(_aimDirection);

        _playerInRange = (Vector3.Distance(transform.position, GameManager.Player.transform.position) < _minimumDistanceForFire);
    }

    private void FireBullet()
    {
        Instantiate(_bulletPrefab, _fireTransform.position, _fireTransform.rotation);
    }

    private IEnumerator FindTargetLoopEnumerator()
    {
        while (true)
        {
            // yield return new WaitForEndOfFrame();

            yield return new WaitUntil(() => _playerInRange);
            
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
            
            // In case of hitting nothing
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
    
}
