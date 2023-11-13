using UnityEngine;
using UnityEngine.Rendering.Universal;

/// <summary>
/// Handles the tank track decal and destroys itself 
/// </summary>
public class TankTrack : MonoBehaviour
{
    [SerializeField] private float _fadeOutSpeed;
    [SerializeField] private DecalProjector _decalProjector;

    private void Update()
    {
        _decalProjector.fadeFactor -= Time.deltaTime * _fadeOutSpeed;

        if( _decalProjector.fadeFactor <= 0.0f)
            Destroy(gameObject);
    }
}
