using Cinemachine;
using Sirenix.OdinInspector;
using System;
using System.Collections;
using Unity.AI.Navigation;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Events;
using UnityEngine.Rendering;
using UnityEngine.SceneManagement;

[RequireComponent(typeof(Animator))]
public class GameManager : MonoBehaviour
{

    [SerializeField] private PlayerController _playerController;
    
    [SerializeField] private CinemachineVirtualCamera _topDownCamera;
    [SerializeField] private Camera _mainCamera;
    
    [SerializeField] private Transform _roller;
    [SerializeField] private float _rollerRotateSpeedMultiplier;
    [SerializeField] private NavMeshSurface _navMeshSurface;


    [SerializeField] private float _deathXViewportPosition;

    [InfoBox("Speed based on time")]
    [SerializeField] private AnimationCurve _levelSpeedCurve;

    [InfoBox("Added speed based on screen position, This value is the lerp between the level speed and the max player speed")]
    [SerializeField] private AnimationCurve _levelSpeedAdditionCurve;
    
    [InfoBox("Slow down curve only from 0 - 1")]
    [SerializeField] private AnimationCurve _slowDownCurve;
    [SerializeField] private float _slowDownTime;
    
    
    [SerializeField] private AudioSource _mainMusic;

    private Animator _gameAnimator;

    private bool _playerMoved;
    private float _timePlayed;
    
    private int _highScore;

    public static GameManager Instance { get; private set; }

    
    public static event Action _onGameStart;
    public static event Action _onGameOver;

    private GameState _activeGameState = GameState.MainMenu;

    public static PlayerController Player => Instance._playerController;

    public static GameState GetGameState => GameManager.Instance._activeGameState;


    public static bool IsPointOnScreen(Vector3 point)
    {
        Vector2 viewportPoint = Instance._mainCamera.WorldToViewportPoint(point);
        return (viewportPoint.x is >= 0.0f and <= 1.0f && viewportPoint.y is >= 0.0f and <= 1.0f);
    }


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

        _highScore = PlayerPrefs.GetInt("HighScore", 0);
        
        UIManager._onStartButtonPressed += OnStartButtonPressed;
        UIManager._onQuitButtonPressed += OnQuitButtonPressed;

        PlayerController._onPlayerMoveRight += OnPlayerMove;
        PlayerController._onPlayerDeath += OnPlayerDeath;
    }

    private void OnDestroy()
    {
        UIManager._onStartButtonPressed -= OnStartButtonPressed;
        UIManager._onQuitButtonPressed -= OnQuitButtonPressed;

        PlayerController._onPlayerMoveRight -= OnPlayerMove;
        PlayerController._onPlayerDeath -= OnPlayerDeath;
    }
    
    private void Update()
    {
        // Yes yes performance bla bla, NO! It's not a game for release and it would be pre mature!
        _navMeshSurface.UpdateNavMesh(_navMeshSurface.navMeshData);

        
        if (_activeGameState is GameState.InGame or GameState.GameOver && _playerMoved)
        {
            _timePlayed += Time.deltaTime;

            int currentScore = Mathf.RoundToInt(_playerController.transform.position.x);
            if (currentScore > _highScore)
            {
                _highScore = currentScore;
                PlayerPrefs.SetInt("HighScore", _highScore);
            }

            Vector2 playerViewportPoint = _mainCamera.WorldToViewportPoint(_playerController.transform.position);
            
            if (playerViewportPoint.x < _deathXViewportPosition)
                _playerController.OnHealthChange(-100);

            float levelMoveSpeed = Mathf.Lerp(_levelSpeedCurve.Evaluate(_timePlayed),_playerController.MaxSpeed,_levelSpeedAdditionCurve.Evaluate(playerViewportPoint.x));

            
            Vector3 cameraPosition = _topDownCamera.transform.position;
            cameraPosition.x += levelMoveSpeed * Time.deltaTime;
            _topDownCamera.transform.position = cameraPosition;

            _roller.Rotate(Vector3.forward, Time.deltaTime * _rollerRotateSpeedMultiplier * levelMoveSpeed);
            
            _navMeshSurface.center =
                new Vector3(_topDownCamera.transform.position.x, _navMeshSurface.center.y, _navMeshSurface.center.z);
        }
    }

    public void OnPlayerMove()
    {
        _playerMoved = true;
    }

    private void Start()
    {
        Time.timeScale = 1.0f;
        _playerController.EnableControls(false);
        
        DistanceBar.Instance.AddXPlayer(_highScore);
    }
    


    private void OnPlayerDeath()
    {
        if (_activeGameState == GameState.InGame)
            StartCoroutine(GameOverEnumerator());
    }

    private IEnumerator GameOverEnumerator()
    {
        _activeGameState = GameState.GameOver;

        PlayerPrefs.Save();
        
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


    
    private void StartGame()
    {
        _gameAnimator.SetBool("InGame", true);
       
        Cursor.visible = false;

        _timePlayed = 0;

        _activeGameState = GameState.InGame;

        _playerController.EnableControls(true);
        
        _mainMusic.Play();

        _onGameStart?.Invoke();
    }

    public int GetHighScore()
    {
        return _highScore;
    }
}
