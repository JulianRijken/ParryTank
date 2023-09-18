using UnityEngine;

/// <summary>
/// Allows for auto destroying, used for particle systems etc
/// </summary>
public class AutoDestroy : MonoBehaviour
{
    [SerializeField] private float _destroyTime;

    private void Awake()
    {
        Destroy(gameObject, _destroyTime);
    }
}
