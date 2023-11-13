using Sirenix.OdinInspector;
using System;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

[RequireComponent(typeof(Animator))]
public class UIManager : SerializedMonoBehaviour
{
    [SerializeField] private Transform _crosshair;
    [SerializeField] private TextMeshProUGUI _highScoreText;
    [SerializeField] private TextMeshProUGUI _lastScoreText;

    [DictionaryDrawerSettings(ValueLabel = "Screen GameObject", DisplayMode = DictionaryDisplayOptions.Foldout, KeyLabel = "SceenName")]
    [SerializeField] private Dictionary<UIScreens, GameObject> _screens;

    [SerializeField] private GameObject _mainButtons;
    [SerializeField] private GameObject _customButtons;

    private Animator _uiAnimator;

    public static event Action<LevelPart, bool> OnStartButtonPressed;
    public static event Action OnQuitButtonPressed;
    
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

        _highScoreText.text = "High Score " + GameManager.Instance.GetHighScore() + "m";
        
        // Using player prefs as a bandage solution, I would rather do this with some don't destroy on load thing 
        _lastScoreText.text = "Last Score " + (PlayerPrefs.HasKey("LastScore") ? PlayerPrefs.GetInt("LastScore") : 0) + "m";
    }

    private void OnGameStart()
    {
        SwitchScreen(UIScreens.GUI);
    }

    private void OnGameOver()
    {
        SwitchScreen(UIScreens.GameOver);
    }

    private void LateUpdate()
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

    public void PressStartButton(LevelPart levelPart)
    {
        OnStartButtonPressed?.Invoke(levelPart, false);
    }

    public void PressTutorialButton(LevelPart levelPart)
    {
        OnStartButtonPressed?.Invoke(levelPart, true);
    }



    public void PressQuitButton()
    {
        OnQuitButtonPressed?.Invoke();
    }

    public void PressCustomButton()
    {
        _customButtons.SetActive(true);
        _mainButtons.SetActive(false);
    }

    public void PressBackButton()
    {
        _customButtons.SetActive(false);
        _mainButtons.SetActive(true);
    }



}
