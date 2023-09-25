using Julian.Sound;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bomb : MonoBehaviour
{
    [SerializeField] private GameObject _explodePrefab;

    [SerializeField] private float _timeToExplode;
    [SerializeField] private float _radius;
    [SerializeField] private Vector3 _center;

    private bool _exploded = false;

    private  void Start()
    {
        StartCoroutine(ExplodeCourutine());
    }

    private IEnumerator ExplodeCourutine()
    {
        yield return new WaitForSeconds(_timeToExplode);
        Explode();
    }

    private void Explode()
    {
        if (_exploded)
            return;

        _exploded = true;

        var hitColliders = Physics.OverlapSphere(transform.position + _center, _radius);

        foreach (Collider hitCollider in hitColliders) 
        {
            BreakableBlock breakableBlock = hitCollider.GetComponent<BreakableBlock>();
            breakableBlock?.BreakBlock();

            Bomb bomb = hitCollider.GetComponent<Bomb>();
            bomb?.Explode();

            IDamageable damageable = hitCollider.GetComponent<IDamageable>();
            damageable?.OnHealthChange(-100.0f);
        }

        Instantiate(_explodePrefab, transform.position + _center, Quaternion.identity);

        Destroy(gameObject);

        AudioManager.PlaySound(SoundType.bombExplode);
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position + _center, _radius);
    }
}
