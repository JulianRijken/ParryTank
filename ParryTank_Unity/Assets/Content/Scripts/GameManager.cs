using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class GameManager : MonoBehaviour
{

    [SerializeField] private PlayerController _playerController;
    
    [SerializeField] private Transform _mainCameraTransform;
    [SerializeField] private float _levelMoveSpeed;
    
    [SerializeField] private Transform _roller;
    [SerializeField] private float _rollerRotateSpeedMultiplier;
    
    public static GameManager Instance { get; private set; }

    private void Awake()
    {
        Instance = this;
    }

    public static PlayerController Player => Instance._playerController;

    private void Start()
    {
        Cursor.lockState = CursorLockMode.Confined;
        Cursor.visible = false;

     
        
        
    }

    private void Update()
    {
        Vector3 cameraPosition = _mainCameraTransform.transform.position;
        cameraPosition.x += _levelMoveSpeed * Time.deltaTime;
        _mainCameraTransform.position = cameraPosition;

        _roller.Rotate(Vector3.forward, Time.deltaTime * _rollerRotateSpeedMultiplier * _levelMoveSpeed);
    }


}
