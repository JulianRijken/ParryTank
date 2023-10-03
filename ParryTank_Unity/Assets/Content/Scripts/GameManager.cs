using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.SceneManagement;
using Random = UnityEngine.Random;

public class GameManager : MonoBehaviour
{

    [SerializeField] private PlayerController _playerController;
    
    [SerializeField] private Transform _mainCameraTransform;
    [SerializeField] private float _levelMoveSpeed;
    
    [SerializeField] private Transform _roller;
    [SerializeField] private float _rollerRotateSpeedMultiplier;

    [SerializeField] private Animator _cameraAnimator;

    [SerializeField] private UnityEvent _onGameStartEditorEvent;

    public static GameManager Instance { get; private set; }

    
    public static event Action _onGameStart;
    
    
    private void Awake()
    {
        Instance = this;
        Cursor.lockState = CursorLockMode.Confined;
        
        UIManager._onStartButtonPressed += OnStartButtonPressed;
        UIManager._onQuitButtonPressed += OnQuitButtonPressed;
        
        PlayerController._onPlayerDeath += OnPlayerDeath;
    }

    private void OnPlayerDeath()
    {
        Debug.Log("Player Death");
    }

    private void OnQuitButtonPressed()
    {
#if UNITY_EDITOR
        UnityEditor.EditorApplication.ExitPlaymode();
#else
        Application.Quit();
#endif
    }

    private void OnStartButtonPressed()
    {
        StartGame();
    }

    public static PlayerController Player => Instance._playerController;

    private void Start()
    {
        _playerController.EnableControls(false);
    }

    private void Update()
    {
        Vector3 cameraPosition = _mainCameraTransform.transform.position;
        cameraPosition.x += _levelMoveSpeed * Time.deltaTime;
        _mainCameraTransform.position = cameraPosition;

        _roller.Rotate(Vector3.forward, Time.deltaTime * _rollerRotateSpeedMultiplier * _levelMoveSpeed);
    }

    private void StartGame()
    {
        _cameraAnimator.SetBool("InGame", true);
        _levelMoveSpeed = 1.0f;
        
        Cursor.visible = false;
        
        _playerController.EnableControls(true);
        
        _onGameStart?.Invoke();
        _onGameStartEditorEvent?.Invoke();
    }




}
