using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BreakableBlock : Block
{
    [Header("Particle")]
    [SerializeField] private GameObject _explodeParticle;
    [SerializeField] private Vector3 _explodeParticleSpawnLocation;

    public void BreakBlock()
    {
        if(_explodeParticle != null)      
            Instantiate(_explodeParticle, transform.position + _explodeParticleSpawnLocation, Quaternion.identity);

        gameObject.SetActive(false);
    }

    private void OnDrawGizmos()
    {
        Gizmos.DrawSphere(transform.position + _explodeParticleSpawnLocation, 0.25f);
    }
}