using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DistanceBar : MonoBehaviour
{
    [SerializeField] private DistanceBarItem _distanceItemPlayer;
    [SerializeField] private DistanceBarItem _distanceItemScene10Prefab;
    [SerializeField] private DistanceBarItem _distanceItemScene1Prefab;
    [SerializeField] private DistanceBarItem _distanceItemEnemyPrefab;
    [SerializeField] private DistanceBarItem _distanceItemXPrefab;
    [SerializeField] private Color _playerXColor;

    private Transform _playerTransform;
    private Camera _mainCamera;

    private int _spawnDistance = -10;
    private const int _spawnInterval = 10;

    public static DistanceBar Instance;

    private void Awake()
    {
        if (Instance != null)
        {
            Destroy(gameObject);
            return;
        }

        // Only one will ever be in the level
        Instance = this;
    }

    private void Start()
    {
        _mainCamera = Camera.main;
        _playerTransform = GameManager.Player.transform;
        _distanceItemScene10Prefab.gameObject.SetActive(false);
        _distanceItemScene1Prefab.gameObject.SetActive(false);
        _distanceItemEnemyPrefab.gameObject.SetActive(false);
        _distanceItemXPrefab.gameObject.SetActive(false);
    }

    private void Update()
    {
        _distanceItemPlayer.SetFollowPositionX(_playerTransform.position.x);

        Vector3 screenRightSidePosition = _mainCamera.ViewportToWorldPoint(new Vector2(1.0f, 0.0f));
        
        if (screenRightSidePosition.x > _spawnDistance)
        {
            DistanceBarItem prefab = (_spawnDistance % _spawnInterval == 0 ? _distanceItemScene10Prefab : _distanceItemScene1Prefab);
            DistanceBarItem newBarItem = Instantiate(prefab,prefab.transform.parent);
            newBarItem.transform.position =
                new Vector3(newBarItem.transform.position.x, prefab.transform.parent.transform.position.y);
            newBarItem.SetFollowPositionX(_spawnDistance);
            
            newBarItem.gameObject.SetActive(true);
            _spawnDistance += 1;
        }
    }

    public void AddEnemy(Transform enemyTank)
    {
        DistanceBarItem newBarItem = Instantiate(_distanceItemEnemyPrefab,_distanceItemEnemyPrefab.transform.parent);
        newBarItem.transform.position =
            new Vector3(newBarItem.transform.position.x, _distanceItemScene1Prefab.transform.parent.transform.position.y);
        
        newBarItem.SetTargetTransform(enemyTank);
        newBarItem.gameObject.SetActive(true);
    }
    
    public void AddX(float positionX)
    {
        DistanceBarItem newBarItem = Instantiate(_distanceItemXPrefab, _distanceItemXPrefab.transform.parent);
        newBarItem.transform.position =
            new Vector3(newBarItem.transform.position.x, _distanceItemScene1Prefab.transform.parent.transform.position.y);

        newBarItem.SetFollowPositionX(positionX);
        newBarItem.SetIconColor(Color.white);
        newBarItem.gameObject.SetActive(true);
    }

    public void AddXPlayer(float positionX)
    {
        DistanceBarItem newBarItem = Instantiate(_distanceItemXPrefab, _distanceItemXPrefab.transform.parent);
        newBarItem.transform.position =
            new Vector3(newBarItem.transform.position.x, _distanceItemScene1Prefab.transform.parent.transform.position.y);

        newBarItem.SetFollowPositionX(positionX);
        newBarItem.SetIconColor(_playerXColor);
        newBarItem.gameObject.SetActive(true);
    }
    
}
