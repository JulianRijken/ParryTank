using Julian.Sound;
using System;
using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerController : BaseTank
{
    [Header("Player tank settings")]
    [SerializeField] private float _maxMoveSpeed;
    [SerializeField] private float _accelerationSpeed;
    [SerializeField] private float _decelerationSpeed;
    [SerializeField] private float _aimPlaneHeight;
    [SerializeField] private float _trackDecalSpawnInterval;
    [SerializeField] private float _deflectRadius;
    [SerializeField] private float _fireDelay;
    [SerializeField] private float _bombPlaceDelay;
    [SerializeField] private Vector2 _speedAxisMultiplier;
    [SerializeField] protected SoundType _fireSound;
    [SerializeField] protected SoundType _fireResetSound;

    [SerializeField] private Collider _tankCollider;
    [SerializeField] private GameObject _crosshairTrail;


    [SerializeField] private GameObject _bombPrefab;
    [SerializeField] private GameObject _deathEffectPrefab;
    [SerializeField] private GameObject _trackDecal;

    [SerializeField] private ParticleSystem _fireParticle;
    
    [SerializeField] private Transform _tankTrackDecalSpawnTransform;
    [SerializeField] private Transform _bombSpawnTransform;
    [SerializeField] private Transform _deflectPoint;

#if UNITY_EDITOR
    [Header("Debug")]
    [SerializeField] private bool _enableControlsByDefault;
    [SerializeField] private bool _invincibility;
#endif


    private bool _canFire = true;
    private bool _canPlaceBomb = true;
    private float _tankDecalDistanceMoved;
    private bool _completedFireTutorial = false;
    private Vector2 _movementInput;
    private Vector2 _velocityPlanar;
    private Quaternion _tankBodyTargetRotation= Quaternion.identity;

    private Camera _mainCamera;
    private Controls _controls;
    private Rigidbody _rigidbody;
    public float MaxSpeed => _maxMoveSpeed;
    
    public static Action OnPlayerDeath;
    public static Action OnPlayerMoveRight;
    public static Action OnPlayerPlaceBomb;
    
    private void Awake()
    {
        _rigidbody = GetComponent<Rigidbody>();
        _mainCamera = Camera.main;
        
        _crosshairTrail.SetActive(false);
        
        _controls = new Controls();
        _controls.Player.Move.performed += OnMovementInput;
        _controls.Player.Move.canceled += OnMovementInput;
        _controls.Player.PlaceBomb.performed += OnBombInput;
        _controls.Player.Attack.performed += OnAttackInput;
        
#if UNITY_EDITOR
        if(_enableControlsByDefault)
            _controls.Enable();
#endif
        
        GameManager._onGameStart += OnGameStart;
    }



    private void OnDestroy()
    {
        _controls.Player.Move.performed -= OnMovementInput;
        _controls.Player.Move.canceled -= OnMovementInput;
        _controls.Player.PlaceBomb.performed -= OnBombInput;
        _controls.Player.Attack.performed -= OnAttackInput;
        
        GameManager._onGameStart -= OnGameStart;
    }


    /// <summary>
    /// Player update is split up in to regions
    /// This is done instead of splitting the update up in to separate functions
    /// Ideally this would be more of a player component system were for example moving is a component
    /// This is not done as this is a simple prototype project
    /// </summary>
    private void Update()
    {
        if (_isDead)
            return;

        #region Handle Aiming and crosshar trail
        
        Vector3 target = _mainCamera.ScreenToWorldPoint(Input.mousePosition);
        _crosshairTrail.transform.position = target + _mainCamera.transform.forward * 1.0f;
        
        AimTowards(GetMouseWorldPosition());
        #endregion

        #region Handle planar body movement

        // Handle velocity
        Vector2 targetVelocity = _movementInput.normalized * _speedAxisMultiplier * _maxMoveSpeed;
        float smoothSpeed = (_velocityPlanar.magnitude > targetVelocity.magnitude) ? _decelerationSpeed : _accelerationSpeed;
        _velocityPlanar = Vector2.MoveTowards(_velocityPlanar,targetVelocity,smoothSpeed * Time.deltaTime);

        // Stop player from going out of the screen
        Vector3 viewportPosition = _mainCamera.WorldToViewportPoint(transform.position);
        if (viewportPosition.x > 1.0f)
            _velocityPlanar.x = Mathf.Min(0.0f, _velocityPlanar.x);
        
        // Apply velocity
        Vector3 velocity = new Vector3(_velocityPlanar.x, 0, _velocityPlanar.y);
        _rigidbody.velocity = velocity;

        #endregion
        
        #region Handle body rotation
        
        if (velocity.magnitude > 0)
        {
            Quaternion tankBodyVelocityRotation = Quaternion.LookRotation(velocity, Vector3.up);
            float angleDifference = Quaternion.Angle(tankBodyVelocityRotation, _tankBodyTargetRotation);

            if (angleDifference is > 0.0f and < 180)
            {
                _tankBodyTargetRotation = tankBodyVelocityRotation;
            }
        }
        _bodyTransform.rotation = Quaternion.RotateTowards(_bodyTransform.rotation, _tankBodyTargetRotation, Time.deltaTime * _bodyRotateSpeed * _velocityPlanar.magnitude);
        
        #endregion

        #region Handle tank track spawning
        
        _tankDecalDistanceMoved += _velocityPlanar.magnitude * Time.deltaTime;
        if (_tankDecalDistanceMoved > _trackDecalSpawnInterval)
        {
            Instantiate(_trackDecal, _tankTrackDecalSpawnTransform.position, _tankTrackDecalSpawnTransform.rotation);
            _tankDecalDistanceMoved -= _trackDecalSpawnInterval;
            
            AudioManager.PlaySound(SoundType.track);
        }

        #endregion
        
        #region Handle tutorial
        
        if (!_completedFireTutorial)
        {
            var collisions = Physics.OverlapSphere(_deflectPoint.position, _deflectRadius);
            foreach (var collision in collisions)
            {
                Bullet bullet = collision.GetComponent<Bullet>();

                if (bullet)
                    Time.timeScale = 0.1f;
            }
        }
        
        #endregion
    }


    protected override void OnDeath()
    {
        #if UNITY_EDITOR
        if (_invincibility)
            return;
        #endif
        
        base.OnDeath();

        Instantiate(_deathEffectPrefab, transform.position, Quaternion.identity);
        _meshTransform.gameObject.SetActive(false);
        _tankCollider.enabled = false;
        OnPlayerDeath?.Invoke();
        EnableControls(false);
    }
    
    private void OnGameStart()
    {
        _crosshairTrail.SetActive(true);
    }

    public void EnableControls(bool enabled)
    {
        if(enabled)
            _controls.Enable();
        else
            _controls.Disable();
    }

    public void SetTutorialCompleted()
    {
        _completedFireTutorial = true;
    }
    
    private Vector3 GetMouseWorldPosition()
    {
        if (_mainCamera)
        {
            Ray cameraRay = _mainCamera.ScreenPointToRay(Input.mousePosition);
            Plane groundPlane = new Plane(Vector3.up, Vector3.up * _aimPlaneHeight);

            groundPlane.Raycast(cameraRay, out float rayLength);
            return cameraRay.GetPoint(rayLength);
        }
        
        return Vector3.zero;
    }
    
    
    public void OnAttackInput(InputAction.CallbackContext context)
    {
        if(!_canFire) 
            return;
        
        _canFire = false;
            
        Invoke(nameof(AllowFire),_fireDelay);
            
        _fireParticle.Play();
        AudioManager.PlaySound(_fireSound);
            
        var collisions = Physics.OverlapSphere(_deflectPoint.position, _deflectRadius);
        foreach (var collision in collisions)
        {
            Bullet bullet = collision.GetComponent<Bullet>();

            if (bullet)
            {
                bullet.SetBulletDirection(_topTransform.forward);

                if (!_completedFireTutorial)
                {
                    Time.timeScale = 1.0f;
                    _completedFireTutorial = true;
                }
            }
        }
    }

    public void OnBombInput(InputAction.CallbackContext context)
    {
        if (!_canPlaceBomb)
            return;
        
        _canPlaceBomb = false;

        Invoke(nameof(AllowBombPlace), _bombPlaceDelay);
        
        Instantiate(_bombPrefab, _bombSpawnTransform.position, _bombSpawnTransform.rotation);
        OnPlayerPlaceBomb?.Invoke();
    }

    private void OnMovementInput(InputAction.CallbackContext context)
    {
        _movementInput = context.ReadValue<Vector2>();

        if (_movementInput.x > 0)
            OnPlayerMoveRight?.Invoke();
    }

    private void AllowFire()
    {
        AudioManager.PlaySound(_fireResetSound);
        _canFire = true;
    }

    private void AllowBombPlace()
    {
        _canPlaceBomb = true;
    }
    
    
#if UNITY_EDITOR
    private void OnDrawGizmos()
    {
        Gizmos.DrawWireSphere(GetMouseWorldPosition(),0.2f);
        
        Gizmos.DrawWireSphere(_deflectPoint.position,_deflectRadius);
    }
#endif
}
