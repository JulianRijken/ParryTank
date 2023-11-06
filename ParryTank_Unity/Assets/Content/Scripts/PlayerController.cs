using Julian.Sound;
using System;
using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerController : BaseTank
{
    
    [Header("Settings")]
    [SerializeField] private float _maxMoveSpeed;
    [SerializeField] private float _accelerationSpeed;
    [SerializeField] private float _decelerationSpeed;
    [SerializeField] private float _bodyRotateSpeed;
    [SerializeField] private float _aimPlaneHeight;
    [SerializeField] private float _trackDecalSpawnInterval;
    [SerializeField] private float _deflectRadius;
    [SerializeField] private Vector2 _speedAxisMultiplier;
    [SerializeField] protected SoundType _fireSound;
    [SerializeField] protected SoundType _fireResetSound;

    [SerializeField] private Collider _mainCollider;
    [SerializeField] private GameObject _crosshairTrail;

    [SerializeField] private float _fireDelay;
    private bool _canFire = true;
    [SerializeField] private float _bombPlaceDelay;
    private bool _canPlaceBomb = true;
    
    [Header("Effects")]
    [SerializeField] private ParticleSystem _fireParticle;
    [SerializeField] private GameObject _trackDecal;
    [SerializeField] private GameObject _bombPrefab;
    [SerializeField] private GameObject _deathEffectPrefab;
    private float _tankDecalDistanceMoved;

    [Header("Transforms")]
    [SerializeField] private Transform _tankBodyTransform;
    [SerializeField] private Transform _tankTrackDecalSpawnTransform;
    [SerializeField] private Transform _bombSpawnTransform;
    [SerializeField] private Transform _deflectPoint;
    [SerializeField] private Transform _meshTransform;


    private Controls _controls;
    private Vector2 _movementInput;
    private Vector2 _velocityPlanar;
    private Rigidbody _rigidbody;
    private Camera _mainCamera;
    private Quaternion _tankBodyTargetRotation= Quaternion.identity;

    private bool _compleatedFireTutorial = true;

    public float MaxSpeed => _maxMoveSpeed;
    
    public static Action _onPlayerDeath;
    public static Action _onPlayerMoveRight;
    public static Action _onPlayerPlaceBomb;
    
    
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


    private void Update()
    {
        if (_isDead)
            return;

        Vector3 target = _mainCamera.ScreenToWorldPoint(Input.mousePosition);
        _crosshairTrail.transform.position = target + _mainCamera.transform.forward * 1.0f;
        
        
        AimTowards(GetMousePos());
       
         
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




        // Handle body rotation
        if (velocity.magnitude > 0)
        {
            Quaternion tankBodyVelocityRotation = Quaternion.LookRotation(velocity, Vector3.up);
            float angleDifference = Quaternion.Angle(tankBodyVelocityRotation, _tankBodyTargetRotation);

            if (angleDifference is > 0.0f and < 180)
            {
                _tankBodyTargetRotation = tankBodyVelocityRotation;
            }
        }
        
        
        _tankBodyTransform.rotation = Quaternion.RotateTowards(_tankBodyTransform.rotation, _tankBodyTargetRotation, Time.deltaTime * _bodyRotateSpeed * _velocityPlanar.magnitude);
        // _tankBodyTransform.rotation = Quaternion.RotateTowards(_tankBodyTransform.rotation, _tankBodyTargetRotation, Time.deltaTime * _bodyRotateSpeed);


        _tankDecalDistanceMoved += _velocityPlanar.magnitude * Time.deltaTime;

        if (_tankDecalDistanceMoved > _trackDecalSpawnInterval)
        {
            Instantiate(_trackDecal, _tankTrackDecalSpawnTransform.position, _tankTrackDecalSpawnTransform.rotation);
            _tankDecalDistanceMoved -= _trackDecalSpawnInterval;
            
            AudioManager.PlaySound(SoundType.track);
        }

        if (!_compleatedFireTutorial)
        {
            var collisions = Physics.OverlapSphere(_deflectPoint.position, _deflectRadius);
            foreach (var collision in collisions)
            {
                Bullet bullet = collision.GetComponent<Bullet>();

                if (bullet)
                    Time.timeScale = 0.1f;
            }
        }
    }

#if UNITY_EDITOR
    private void OnDrawGizmos()
    {
        Gizmos.DrawWireSphere(GetMousePos(),0.2f);
        
        Gizmos.DrawWireSphere(_deflectPoint.position,_deflectRadius);
    }
#endif

    protected override void OnDeath()
    {
        base.OnDeath();

        Instantiate(_deathEffectPrefab, transform.position, Quaternion.identity);
        _meshTransform.gameObject.SetActive(false);
        _mainCollider.enabled = false;
        _onPlayerDeath?.Invoke();
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
    
    private Vector3 GetMousePos()
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
                bullet.SetBulletDirection(_tankTopTransform.forward);

                if (!_compleatedFireTutorial)
                {
                    Time.timeScale = 1.0f;
                    _compleatedFireTutorial = true;
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
        AudioManager.PlaySound(SoundType.bombPlanted);
        _onPlayerPlaceBomb?.Invoke();
        
    }

    private void OnMovementInput(InputAction.CallbackContext context)
    {
        _movementInput = context.ReadValue<Vector2>();

        if (_movementInput.x > 0)
            _onPlayerMoveRight?.Invoke();
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
}
