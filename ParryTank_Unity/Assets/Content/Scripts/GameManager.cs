using Cinemachine;
using Sirenix.OdinInspector;
using System;
using System.Collections;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.SceneManagement;

[RequireComponent(typeof(Animator))]
public class GameManager : MonoBehaviour
{

    [SerializeField] private PlayerController _playerController;
    
    [SerializeField] private CinemachineVirtualCamera _topDownCamera;
    [SerializeField] private Camera _mainCamera;
    
    [SerializeField] private Transform _roller;
    [SerializeField] private float _rollerRotateSpeedMultiplier;

    [SerializeField] private Animator _cameraAnimator;

    [SerializeField] private UnityEvent _onGameStartEditorEvent;
    [SerializeField] private float _deathXViewportPosition;

    
    [InfoBox("Speed based on time")]
    [SerializeField] private AnimationCurve _levelSpeedCurve;

    [InfoBox("Slow down curve only from 0 - 1")]
    [SerializeField] private AnimationCurve _slowDownCurve;
    [SerializeField] private float _slowDownTime;

    private Animator _gameAnimator;

    private bool _playerMovedRight;
    private float _timePlayed;

    public static GameManager Instance { get; private set; }

    
    public static event Action _onGameStart;
    public static event Action _onGameOver;

    private GameState _activeGameState = GameState.MainMenu;


    public enum GameState
    {
        MainMenu,
        InGame,
        GameOver
    }

    private void Awake()
    {
        _gameAnimator = GetComponent<Animator>();

        Instance = this;
        
        UIManager._onStartButtonPressed += OnStartButtonPressed;
        UIManager._onQuitButtonPressed += OnQuitButtonPressed;

        PlayerController._onPlayerMoveRight += OnPlayerMoveRight;
        PlayerController._onPlayerDeath += OnPlayerDeath;
    }

    private void OnDestroy()
    {
        UIManager._onStartButtonPressed -= OnStartButtonPressed;
        UIManager._onQuitButtonPressed -= OnQuitButtonPressed;

        PlayerController._onPlayerMoveRight -= OnPlayerMoveRight;
        PlayerController._onPlayerDeath -= OnPlayerDeath;
    }
    

    private void OnPlayerMoveRight()
    {
        _playerMovedRight = true;
    }

    private void Start()
    {
        Time.timeScale = 1.0f;
        _playerController.EnableControls(false);
    }



    private void Update()
    {
        if (_activeGameState is GameState.InGame or GameState.GameOver && _playerMovedRight)
        {
            _timePlayed += Time.deltaTime;

            Vector2 playerScreenPoint = _mainCamera.WorldToViewportPoint(_playerController.transform.position);
            
            if (playerScreenPoint.x < _deathXViewportPosition)
                _playerController.OnHealthChange(-100);

            float levelMoveSpeed = _levelSpeedCurve.Evaluate(_timePlayed);

            Vector3 cameraPosition = _topDownCamera.transform.position;
            cameraPosition.x += levelMoveSpeed * Time.deltaTime;
            _topDownCamera.transform.position = cameraPosition;

            _roller.Rotate(Vector3.forward, Time.deltaTime * _rollerRotateSpeedMultiplier * levelMoveSpeed);
        }
    }

    private void OnPlayerDeath()
    {
        if (_activeGameState == GameState.InGame)
            StartCoroutine(GameOverEnumerator());
    }

    private IEnumerator GameOverEnumerator()
    {
        _activeGameState = GameState.GameOver;

        _onGameOver?.Invoke();

        float alpha = 0f;

        while (true)
        {
            Time.timeScale = _slowDownCurve.Evaluate(alpha);

            if (alpha >= 1f) break;
            yield return new WaitForEndOfFrame();
            alpha = Mathf.Clamp01(alpha + (Time.unscaledDeltaTime * (1.0f / _slowDownTime)));
        }

        SceneManager.LoadScene("Main", LoadSceneMode.Single);
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

    public static GameState GetGameState => GameManager.Instance._activeGameState;
    
    private void StartGame()
    {
        _cameraAnimator.SetBool("InGame", true);
       
        Cursor.visible = false;

        _timePlayed = 0;

        _activeGameState = GameState.InGame;

        _playerController.EnableControls(true);
        
        _onGameStart?.Invoke();
        _onGameStartEditorEvent?.Invoke();
    }




}
