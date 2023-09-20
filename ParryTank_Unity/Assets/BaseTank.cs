using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BaseTank : MonoBehaviour, IDamageable
{
    [Header("Aiming")]
    [SerializeField] protected Transform _tankTopTransform;
    [SerializeField] protected float _barrleRotateSpeed;

    [SerializeField] protected float _tankHealth = 100.0f;
    
    [SerializeField] protected GameObject _deathDecal;
    [SerializeField] protected Transform _deathDecalSpawnTransform;



    protected virtual void OnDeath()
    {
        Instantiate(_deathDecal, _deathDecalSpawnTransform.position, _deathDecalSpawnTransform.rotation);
    }

    public void OnHealthChange(float delta)
    {
        _tankHealth += delta;

        if (_tankHealth <= 0.0f)
            OnDeath();
    }

    protected void AimTowards(Vector3 target)
    {
        // Handle gun aiming
        Vector3 aimDirection = target - _tankTopTransform.position;
        aimDirection.y = 0;

        Quaternion targetRotation = Quaternion.LookRotation(aimDirection, Vector3.up);
        _tankTopTransform.rotation = Quaternion.Slerp(_tankTopTransform.rotation, targetRotation, Time.deltaTime * _barrleRotateSpeed);
    }
}
