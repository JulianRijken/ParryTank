using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerController : BaseTank
{
    
    [Header("Settings")]
    [SerializeField] private float _moveSpeed;
    [SerializeField] private float _accelerationSpeed;
    [SerializeField] private float _decelerationSpeed;
    [SerializeField] private float _bodyRotateSpeed;
    [SerializeField] private float _barrleRotateSpeed;
    [SerializeField] private float _aimPlaneHeight;
    [SerializeField] private float _trackDecalSpawnInterval;
    [SerializeField] private float _deflectRadius;
    [SerializeField] private Vector2 _speedAxisMultiplier;

    
    [Header("Effects")]
    [SerializeField] private ParticleSystem _fireParticle;
    [SerializeField] private GameObject _trackDecal;
    private float _tankDecalDistanceMoved;

    [Header("Transforms")]
    [SerializeField] private Transform _tankTopTransform;
    [SerializeField] private Transform _tankBodyTransform;
    [SerializeField] private Transform _tankTrackDecalSpawnTransform;
    [SerializeField] private Transform _deflectPoint;

    private Controls _controls;
    private Vector2 _movementInput;
    private Vector2 _velocityPlanar;
    private Rigidbody _rigidbody;
    private Camera _mainCamera;
    private Quaternion _tankBodyTargetRotation;
    
    private void Awake()
    {
        _rigidbody = GetComponent<Rigidbody>();
        _mainCamera = Camera.main;
        
        _controls = new Controls();
        _controls.Player.Move.performed += OnMovementInput;
        _controls.Player.Move.canceled += OnMovementInput;

        _controls.Player.Attack.performed += OnAttackInput;
    }

    private void Start()
    {
        _controls.Enable();
        
        _tankBodyTargetRotation = Quaternion.identity;
    }

    private void Update()
    {
        // Handle gun aiming
        Vector3 aimDirection = GetMousePos() - _tankTopTransform.position;
        aimDirection.y = 0;
        
        Quaternion targetRotation = Quaternion.LookRotation(aimDirection, Vector3.up);
        _tankTopTransform.rotation = Quaternion.Slerp(_tankTopTransform.rotation,targetRotation,Time.deltaTime * _barrleRotateSpeed);

        
        
        
        // Handle velocity
        Vector2 targetVelocity = _movementInput.normalized * _speedAxisMultiplier * _moveSpeed;
        float smoothSpeed = (_velocityPlanar.magnitude > targetVelocity.magnitude) ? _decelerationSpeed : _accelerationSpeed;
        _velocityPlanar = Vector2.MoveTowards(_velocityPlanar,targetVelocity,smoothSpeed * Time.deltaTime);
        
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
        }
    }

#if UNITY_EDITOR
    private void OnDrawGizmos()
    {
        Gizmos.DrawWireSphere(GetMousePos(),0.2f);
        
        Gizmos.DrawWireSphere(_deflectPoint.position,_deflectRadius);
    }
#endif

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
        _fireParticle.Play();

        
        var collisions = Physics.OverlapSphere(_deflectPoint.position, _deflectRadius);
        foreach (var collision in collisions)
        {
            Bullet bullet = collision.GetComponent<Bullet>();
            if (bullet)
            {
                bullet.SetBulletDirection(_tankTopTransform.forward);
            }
        }

        
    }

    private void OnMovementInput(InputAction.CallbackContext context)
    {
        _movementInput = context.ReadValue<Vector2>();
    }
}
