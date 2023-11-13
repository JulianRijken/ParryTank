using UnityEngine;

public class Roller : MonoBehaviour
{
    const float _size = 8.5f;

    /// <summary>
    /// Continuously looks for IDamageable and instant kills it 
    /// </summary>
    private void Update()
    {
        Collider[] colliders = Physics.OverlapCapsule(transform.position + Vector3.forward * _size,
            transform.position + Vector3.forward * -_size, 1.0f);

        foreach (Collider collider in colliders)
        {
            IDamageable damageable = collider.GetComponent<IDamageable>();
            damageable?.OnHealthChange(-float.MaxValue);
        }
    }
}
