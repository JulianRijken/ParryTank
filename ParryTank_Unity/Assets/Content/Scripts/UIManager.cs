using Sirenix.OdinInspector;
using System;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Animator))]
public class UIManager : SerializedMonoBehaviour
{
    [SerializeField] private Transform _crosshair;

    [DictionaryDrawerSettings(ValueLabel = "Screen GameObject", DisplayMode = DictionaryDisplayOptions.Foldout, KeyLabel = "SceenName")]
    [SerializeField] private Dictionary<UIScreens, GameObject> _screens;


    private Animator _uiAnimator;

    public static Action _onStartButtonPressed;
    public static Action _onQuitButtonPressed;


    private enum UIScreens
    {
        MainMenu,
        GUI,
        GameOver
    }

    private void Awake()
    {
        _uiAnimator = GetComponent<Animator>();

        GameManager._onGameStart += OnGameStart;
        GameManager._onGameOver += OnGameOver;
    }

    private void OnDestroy()
    {
        GameManager._onGameStart -= OnGameStart;
        GameManager._onGameOver -= OnGameOver;
    }

    private void Start()
    {
        SwitchScreen(UIScreens.MainMenu);

        Cursor.lockState = CursorLockMode.Confined;
        Cursor.visible = true;
    }

    private void OnGameStart()
    {
        SwitchScreen(UIScreens.GUI);
    }

    private void OnGameOver()
    {
        SwitchScreen(UIScreens.GameOver);
    }

    private void Update()
    {
        Vector3 mousePos = Input.mousePosition;

        _crosshair.position = mousePos;
    }

    private void SwitchScreen(UIScreens screen)
    {
        foreach(KeyValuePair<UIScreens, GameObject> pair in _screens) 
        {
            pair.Value.SetActive(false);
        }

        _screens[screen].SetActive(true);
        _uiAnimator.SetInteger("ActiveScreen",(int)screen);
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
