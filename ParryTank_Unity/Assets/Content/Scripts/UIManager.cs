using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIManager : MonoBehaviour
{
    [SerializeField] private Transform _crosshair;

    [SerializeField] private GameObject _mainMenuScreen;
    [SerializeField] private GameObject _guiScreen;
    
    public static Action _onStartButtonPressed;
    public static Action _onQuitButtonPressed;

    private void Awake()
    {
        GameManager._onGameStart += OnGameStart;
    }

    private void Start()
    {
        _mainMenuScreen.SetActive(true);
        _guiScreen.SetActive(false);
    }

    private void OnGameStart()
    {
        _mainMenuScreen.SetActive(false);
        _guiScreen.SetActive(true);
    }
    
    private void Update()
    {
        Vector3 mousePos = Input.mousePosition;

        _crosshair.position = mousePos;
    }

    public void PressStartButton()
    {
        _onStartButtonPressed?.Invoke();
    }
    
    public void PressQuitButton()
    {
        _onQuitButtonPressed?.Invoke();
    }
}
