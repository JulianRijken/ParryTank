using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BaseTank : MonoBehaviour, IDamageable
{
    [SerializeField] private float _tankHealth = 100.0f;
    
    [SerializeField] private GameObject _deathDecal;
    [SerializeField] private Transform _deathDecalSpawnTransform;


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
}
