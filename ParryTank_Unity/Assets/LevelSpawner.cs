using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class LevelSpawner : MonoBehaviour
{
    [SerializeField] private int _preloadCount;
    [SerializeField] private LevelPart[] _levelPartPrefabs;
    [SerializeField] private Camera _camera;

    private LevelPart _lastSpawned;
    private Queue<LevelPart> _activeLevelParts = new Queue<LevelPart>();


    private void Start()
    {
        if (_camera == null)
            _camera = Camera.main;

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

    private void SpawnLevelPart()
    {
        Vector3 spawnPosition;

        if (_lastSpawned == null)
        {
            spawnPosition = transform.position;
        }
        else
        {
            spawnPosition = _lastSpawned.transform.position + _lastSpawned.EndPoint;
        }


        LevelPart nextLevelPart = _levelPartPrefabs[Random.Range(0, _levelPartPrefabs.Length)];
        spawnPosition -= nextLevelPart.StartPoint;
        
        LevelPart nextLevelPartInstance = Instantiate(nextLevelPart,spawnPosition,Quaternion.identity);
        _lastSpawned = nextLevelPartInstance;
        _activeLevelParts.Enqueue(_lastSpawned);
    }
}