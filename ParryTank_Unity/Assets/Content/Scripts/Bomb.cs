using Cinemachine;
using Julian.Sound;
using System.Collections;
using System.Collections.Generic;
using UnityEditor.PackageManager;
using UnityEngine;
using UnityEngine.Events;

public class Bomb : MonoBehaviour
{
    [SerializeField] private GameObject _explodePrefab;

    [SerializeField] private float _timeToExplode;
    [SerializeField] private float _timeToBlink;
    [SerializeField] private float _radius;
    [SerializeField] private Vector3 _center;
    [SerializeField] private UnityEvent _event;

    private Animator _animator;

    private bool _exploded = false;

    enum BombState
    {
        Idle,
        blink,
        BIEMBIEMBAMBAM
    }

    private void Awake()
    {
        _animator = GetComponent<Animator>();
    }

    private  void Start()
    {
        StartCoroutine(ExplodeCourutine());
    }

    private IEnumerator ExplodeCourutine()
    {
        _animator.SetInteger("State", (int)BombState.Idle);

        yield return new WaitForSeconds(_timeToBlink);
        _animator.SetInteger("State", (int)BombState.blink);


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

        if(_explodePrefab != null)
            Instantiate(_explodePrefab, transform.position + _center, Quaternion.identity);

        AudioManager.PlaySound(SoundType.explosion);
        _event?.Invoke();
        _animator.SetInteger("State",(int)BombState.BIEMBIEMBAMBAM);
    }

    public void OnExplodeEnd()
    {
        Destroy(gameObject);
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position + _center, _radius);
    }
}
