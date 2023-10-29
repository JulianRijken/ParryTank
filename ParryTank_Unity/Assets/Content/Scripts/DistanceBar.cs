using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DistanceBar : MonoBehaviour
{
    [SerializeField] private DistanceBarItem _distanceItemPlayer;
    [SerializeField] private DistanceBarItem _distanceItemScene10Prefab;
    [SerializeField] private DistanceBarItem _distanceItemScene1Prefab;
    [SerializeField] private Transform _barItemParent;
    
    private Transform _playerTransform;
    private Camera _mainCamera;

    private int spawnDistance = -10;
    private void Start()
    {
        _mainCamera = Camera.main;
        _playerTransform = GameManager.Player.transform;
        _distanceItemScene10Prefab.gameObject.SetActive(false);
        _distanceItemScene1Prefab.gameObject.SetActive(false);
    }

    private void Update()
    {
        _distanceItemPlayer.SetFollowPositionX(_playerTransform.position.x);

        Vector3 screenRightSidePosition = _mainCamera.ViewportToWorldPoint(new Vector2(1.0f, 0.0f));
        
        if (screenRightSidePosition.x > spawnDistance)
        {
            DistanceBarItem newBarItem = Instantiate(spawnDistance % 10 == 0 ? _distanceItemScene10Prefab : _distanceItemScene1Prefab,_barItemParent);
            newBarItem.transform.position =
                new Vector3(newBarItem.transform.position.x, _barItemParent.transform.position.y);
            newBarItem.SetFollowPositionX(spawnDistance);
            
            newBarItem.gameObject.SetActive(true);
            spawnDistance += 1;
        }
    }
}
