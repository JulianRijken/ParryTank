using Julian.Sound;
using UnityEngine;

public class BaseTank : MonoBehaviour, IDamageable
{
    [Header("Aiming")]
    [SerializeField] protected Transform _tankTopTransform;
    [SerializeField] protected float _barrleRotateSpeed;
    [SerializeField] protected bool _slerpSmoothing;

    [SerializeField] protected float _tankHealth = 100.0f;
    
    [SerializeField] protected GameObject _deathDecal;
    [SerializeField] protected Transform _deathDecalSpawnTransform;

    protected bool _isDead = false;

    protected virtual void OnDeath()
    {
        Instantiate(_deathDecal, _deathDecalSpawnTransform.position, _deathDecalSpawnTransform.rotation);
        AudioManager.PlaySound(SoundType.explosion);
        _isDead = true;
    }

    public void OnHealthChange(float delta)
    {
        if (_tankHealth <= 0)
            return;

        _tankHealth += delta;

        Mathf.Max(0.0f,_tankHealth);

        if (_tankHealth <= 0.0f)
            OnDeath();
    }

    protected void AimTowards(Vector3 target)
    {
        // Handle gun aiming
        Vector3 aimDirection = target - _tankTopTransform.position;
        aimDirection.y = 0;

        AimTowardsDirection(aimDirection);
    }
    
    protected void AimTowardsDirection(Vector3 aimDirection)
    {
        Quaternion targetRotation = Quaternion.LookRotation(aimDirection, Vector3.up);
        
        if(_slerpSmoothing)
            _tankTopTransform.rotation = Quaternion.Slerp(_tankTopTransform.rotation, targetRotation, Time.deltaTime * _barrleRotateSpeed);
        else
            _tankTopTransform.rotation = Quaternion.RotateTowards(_tankTopTransform.rotation, targetRotation, Time.deltaTime * _barrleRotateSpeed);
    }
}
