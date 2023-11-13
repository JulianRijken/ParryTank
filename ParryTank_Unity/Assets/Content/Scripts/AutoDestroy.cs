using UnityEngine;

/// <summary>
/// Allows for auto destroying, used for particle systems and temporary objects
/// </summary>
public class AutoDestroy : MonoBehaviour
{
    [SerializeField] private float _destroyTime;

    private void Awake()
    {
        Destroy(gameObject, _destroyTime);
    }
}
