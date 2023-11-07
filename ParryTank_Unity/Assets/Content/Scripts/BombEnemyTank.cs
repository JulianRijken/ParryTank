using System.Collections;
using UnityEngine;
using UnityEngine.AI;
using Random = UnityEngine.Random;

public class BombEnemyTank : BaseTank
{
    [Header("Moving tank settings")]
    [SerializeField] private float _moveDistance;
    [SerializeField] private GameObject _bombPrefab;
    [SerializeField] private Transform _bombPlaceTransform;
    
    private NavMeshAgent _navMeshAgent;
    private void Awake()
    {
        _navMeshAgent = GetComponent<NavMeshAgent>();
    }

    private void Update()
    {
        if(_navMeshAgent == null)
            return;

        if (!_navMeshAgent.isOnNavMesh)
            return;
        
        if(!GameManager.IsPointOnScreen(transform.position))
            return;
        
        if (_navMeshAgent.hasPath)
        {
            if (_navMeshAgent.remainingDistance <= 1.0f)
            {
                SetNextDestination();
                PlaceBomb();
            }
        }
        else
        {
            SetNextDestination();
        }
    }
    
    protected override void OnDeath()
    {
        base.OnDeath();
        
        DistanceBar.Instance.AddX(transform.position.x);
        Destroy(gameObject);
    }

    private void SetNextDestination()
    {
        if (GetRandomPointOnMesh(out var point))
            _navMeshAgent.SetDestination(point);
    }
    
    private bool GetRandomPointOnMesh(out Vector3 point)
    {
        Vector3 randomPoint = transform.position + Random.onUnitSphere * _moveDistance;
        if (NavMesh.SamplePosition(randomPoint, out var hit, float.MaxValue, NavMesh.AllAreas))
        {
            point = hit.position;
            return true;
        }

        point = Vector3.zero;
        return false;
    }

    private void PlaceBomb()
    {
        Instantiate(_bombPrefab, _bombPlaceTransform.position, _bombPlaceTransform.rotation);
    }
    
        
    
#if UNITY_EDITOR
    private void OnDrawGizmosSelected()
    {
        Gizmos.DrawWireSphere(transform.position,_moveDistance);
        
        if(_navMeshAgent)
            Gizmos.DrawSphere(_navMeshAgent.destination,0.5f);
    }
#endif

}
