using System.Collections;
using UnityEngine;
using Random = UnityEngine.Random;

public class StationaryEnemyTank : BaseTank
{
    [Header("Stationary tank settings")]
    [SerializeField] private int _aimBounceChecks;
    [SerializeField] private float _minimumAngleForFire;
    [SerializeField] private float _minimumDistanceForFire;
    [SerializeField] private float _maximumDistanceForFire;
    [SerializeField] private Bullet _bulletPrefab;
    [SerializeField] private Transform _fireTransform;
    [SerializeField] private Transform[] _extraFireTransforms;
    [SerializeField] private Vector2 _fireDelayMinMax;
    [SerializeField] private Vector2 _reTargetDelayMinMax;
    [SerializeField] private LayerMask _ignoreLayers;
    
    [Tooltip("Left null will result in the player transform as target")]
    [SerializeField] private Transform _targetTransform;

    private bool _canFire;
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
        if (_bulletPrefab == null)
        {
            Debug.LogWarning("No bullet prefab");
            return;
        }

        if (_targetTransform == null)
        {
            if (GameManager.Player != null)
                _targetTransform = GameManager.Player.transform;
        }
        
        // Set body and top to a random rotation for a more random feeling
        _bodyTransform.rotation = Quaternion.AngleAxis(Random.value * 360.0f, Vector3.up);
        _topTransform.rotation = Quaternion.AngleAxis(Random.value * 360.0f, Vector3.up);

        StartCoroutine(FireLoop());
        StartCoroutine(FindTargetLoopEnumerator());

        // Add it self to the distance bar if possible
        if(DistanceBar.Instance != null)
            DistanceBar.Instance.AddEnemy(transform);
        
    }
    private void Update()
    {
        AimTowardsDirection(_aimDirection);
    }

    
    protected override void OnDeath()
    {
        base.OnDeath();
        
        if(DistanceBar.Instance != null)
            DistanceBar.Instance.AddX(transform.position.x);
        
        Destroy(gameObject);
    }

    private bool IsTargetInRange()
    {
        float distance = Vector3.Distance(transform.position, _targetTransform.position);
        return (distance < _maximumDistanceForFire && distance > _minimumDistanceForFire);
    }

    private Vector3 GetTargetDirection()
    {
        Vector3 targetDirection = (_targetTransform.position - _topTransform.position ).normalized;
        targetDirection.y = 0;
        return targetDirection;
    }

    
    /// <summary>
    /// Will fire bullets at an interval if the aim direction is within the minimum angle
    /// and the tank is allowed to fire (can hit a target)
    /// </summary>
    private IEnumerator FireLoop()
    {
        while (true)
        {
            if (IsTargetInRange())
            {
                float angle = Vector3.Angle(_fireTransform.forward, _aimDirection);

                if (angle <= _minimumAngleForFire && _canFire)
                {
                    FireBullet(_fireTransform);

                    // Fire bullet from optional extra fire transforms
                    foreach (Transform extraFireTransform in _extraFireTransforms)
                        FireBullet(extraFireTransform);

                    yield return new WaitForSeconds(Random.Range(_fireDelayMinMax.x, _fireDelayMinMax.y));
                }
            }
            else
            {
                float randomAngle = Random.value * Mathf.PI * 2;
                _aimDirection = new Vector3(Mathf.Cos(randomAngle), 0, Mathf.Sin(randomAngle));

                yield return new WaitForSeconds(Random.Range(_reTargetDelayMinMax.x, _reTargetDelayMinMax.y));
            }

            yield return new WaitForEndOfFrame();
        }
    }
    
    /// <summary>
    /// Responsible for updating the aim direction and setting _canFire
    /// </summary>
    private IEnumerator FindTargetLoopEnumerator()
    {
        while (true)
        {
            yield return new WaitUntil(IsTargetInRange);

            yield return new WaitForSeconds(Random.Range(_reTargetDelayMinMax.x, _reTargetDelayMinMax.y));

            yield return new WaitForEndOfFrame();
            
            if(GameManager.Instance != null)
                yield return new WaitUntil(() => GameManager.GetGameState == GameManager.GameState.InGame);
            
            CheckResult directHitCheckResult = new CheckResult(false,float.MaxValue);
            directHitCheckResult = CheckHit(GetTargetDirection());

            if (directHitCheckResult.hasHit)
            {
                _aimDirection = directHitCheckResult.direction;
                _canFire = true;
                continue;
            }
            
            CheckResult closestCheckResult = new CheckResult(false,float.MaxValue);

            // Only start bounce checking if the tank is allowed to 
            if (_aimBounceChecks > 0)
            {
                for (int angle = 0; angle < 360; angle++)
                {
                    // Makes sure the finding of the target is spread out over time to reduce cpu usage 
                    //yield return new WaitForSecondsRealtime(0.01f);
                    yield return new WaitForEndOfFrame();
                    
                    float radian = Mathf.Deg2Rad * angle;
                    Vector3 checkDirection = new Vector3(Mathf.Cos(radian), 0.0f, Mathf.Sin(radian));

                    CheckResult check = CheckHit(checkDirection);
                    if (check.hasHit)
                    {
                        if (check.distance < closestCheckResult.distance)
                            closestCheckResult = check;
                    }
                }
            }

            if (closestCheckResult.hasHit)
            {
                _aimDirection = closestCheckResult.direction;
                _canFire = true;
                continue;
            }

            _canFire = false;
        }
    }
    
    
    
    private CheckResult CheckHit(Vector3 direction)
    {
        CheckResult checkResult = new CheckResult(false,0.0f,direction);
        
        Vector3 fromPoint = _topTransform.position;
        Vector3 rayDirection = direction;
        
        for (int bounceIndex = 0; bounceIndex <= _aimBounceChecks; bounceIndex++)
        {
            Physics.Raycast(fromPoint, rayDirection,out var hit,Mathf.Infinity,~_ignoreLayers);
            
            if (hit.collider == null)
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
            
            Debug.DrawLine(fromPoint,hit.point, Color.white,0.1f);
            fromPoint = hit.point;
            rayDirection  = Vector3.Reflect(rayDirection, hit.normal).normalized;

        }

        return checkResult;
    }
    
    void FireBullet(Transform fireTransform)
    {
        if(!_bulletPrefab)
            return;
        
        Bullet spawnedBullet = Instantiate(_bulletPrefab, fireTransform.position, fireTransform.rotation);
        spawnedBullet.SetTarget(GameManager.Player.transform);
    }
    
    
    #if UNITY_EDITOR
    private void OnDrawGizmosSelected()
    {
        Gizmos.color = new Color(1, 1, 1, 0.1f);
        Gizmos.DrawWireSphere(transform.position,_minimumDistanceForFire);
        Gizmos.DrawWireSphere(transform.position,_maximumDistanceForFire);
    }
#endif
    
}
