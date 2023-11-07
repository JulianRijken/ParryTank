using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class LevelSpawner : MonoBehaviour
{
    [SerializeField] private int _preloadCount;
    [SerializeField] private bool _updateNavMesh;
    [SerializeField] private LevelPart _startPice;
    [SerializeField] private LevelPart[] _levelPartPrefabs;
    [SerializeField] private Camera _camera;

    private LevelPart _lastSpawned;
    private Queue<LevelPart> _activeLevelParts = new Queue<LevelPart>();


    private void OnEnable()
    {
        if (_camera == null)
            _camera = Camera.main;

        if(_startPice != null)
            SpawnLevelPart(_startPice);

        for (int i = 0; i < _preloadCount; i++)
            SpawnLevelPart();
    }

    void Update()
    {
        if (_lastSpawned == null)
        {
            SpawnLevelPart();
            return;
        }
        
        float screenRightEdgeX = _camera.ViewportToWorldPoint(new Vector3(1, 0, _camera.transform.position.z)).x;
        
        if ((_lastSpawned.transform.position + _lastSpawned.StartPoint).x < screenRightEdgeX)
        {
            SpawnLevelPart();
        }
        
        float screenLeftEdgeX = _camera.ViewportToWorldPoint(new Vector3(0, 0, _camera.transform.position.z)).x;
        
        if ((_activeLevelParts.Peek().transform.position + _activeLevelParts.Peek().EndPoint).x < screenLeftEdgeX)
        {
            Destroy(_activeLevelParts.Dequeue().gameObject);
        }
        
    }

    public void SetStartPiece(LevelPart startPiece)
    {
        _startPice = startPiece;
    }
    
    private void SpawnLevelPart(LevelPart forcePart = null)
    {
        Vector3 spawnPosition;

        if (_lastSpawned == null)    
            spawnPosition = transform.position;
        else   
            spawnPosition = _lastSpawned.transform.position + _lastSpawned.EndPoint;
      
        LevelPart nextLevelPart = forcePart == null ? _levelPartPrefabs[Random.Range(0, _levelPartPrefabs.Length)] : forcePart;
      
        spawnPosition -= nextLevelPart.StartPoint;
        
        LevelPart nextLevelPartInstance = Instantiate(nextLevelPart,spawnPosition,Quaternion.identity);
        _lastSpawned = nextLevelPartInstance;
        _activeLevelParts.Enqueue(_lastSpawned);
        
        if(_updateNavMesh)
            GameManager.UpdateNavMeshStatic();
    }
}
