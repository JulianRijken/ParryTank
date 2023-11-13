using UnityEngine;

/// <summary>
/// Inherits from block and allows itself to be destroyed
/// </summary>
public class BreakableBlock : Block
{
    [Header("Particle")]
    [SerializeField] private GameObject _explodeParticle;
    [SerializeField] private Vector3 _explodeParticleSpawnLocation;

    /// <summary>
    /// Spawns explode particle and sets itself in-active
    /// </summary>
    public void BreakBlock()
    {
        if(_explodeParticle != null)      
            Instantiate(_explodeParticle, transform.position + _explodeParticleSpawnLocation, Quaternion.identity);

        gameObject.SetActive(false);
    }

#if UNITY_EDITOR
    private void OnDrawGizmos()
    {
        Gizmos.DrawSphere(transform.position + _explodeParticleSpawnLocation, 0.25f);
    }
#endif
}
