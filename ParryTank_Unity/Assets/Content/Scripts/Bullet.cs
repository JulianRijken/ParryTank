using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;

public class Bullet : MonoBehaviour
{
    
    [SerializeField] private float _flySpeed;
    [SerializeField] private float _rotateSpeed;
    [SerializeField] private int _maxBounces;
    [SerializeField] private GameObject _hitWallParticle;
    [SerializeField] private GameObject _destroyPartice;

    private Rigidbody _rigidbody;
    private Vector2 _planerVelocity;
    private int _timesBounced;
    
    
    
    private void Awake()
    {
        _rigidbody = GetComponent<Rigidbody>();
    }

    private void Start()
    {
        SetBulletDirection(transform.forward);
    }

    private void Update()
    {
        _rigidbody.velocity = new Vector3(_planerVelocity.x,0,_planerVelocity.y) * _flySpeed;
        
        Quaternion targetRotation = Quaternion.LookRotation(new Vector3(_planerVelocity.x, 0, _planerVelocity.y));
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, Time.deltaTime * _rotateSpeed);
    }

    private void OnCollisionEnter(Collision collision)
    {
        _timesBounced++;

        if (_timesBounced > _maxBounces)
        {
            Instantiate(_destroyPartice, transform.position, Quaternion.identity);
            Destroy(gameObject);
            return;
        }
        
        Vector3 wallNormal = collision.GetContact(0).normal;
        Vector2 plannerWallNormal = new Vector2(wallNormal.x, wallNormal.z);
        
        Vector2 reflectedVector = Vector2.Reflect(_planerVelocity.normalized,plannerWallNormal);
        _planerVelocity = reflectedVector;

        Instantiate(_hitWallParticle, transform.position, Quaternion.identity);
    }


    public void SetBulletDirection(Vector3 direction)
    {
        Vector2 planarDirection = new Vector2(direction.normalized.x, direction.normalized.z);
        _planerVelocity = planarDirection;
    }
}
