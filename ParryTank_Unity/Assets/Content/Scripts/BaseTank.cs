using Julian.Sound;
using UnityEngine;

public class BaseTank : MonoBehaviour, IDamageable
{
    protected enum RotateType
    {
        Slerp,
        RotateTowards,
        Direct
    }

    [Header("Bae tank settings (does not always apply)")]
    [SerializeField] protected float _topRotateSpeed;
    [SerializeField] protected float _bodyRotateSpeed;
    [SerializeField] protected RotateType _topRotateType;

    [SerializeField] protected GameObject _deathDecal;
    [SerializeField] protected GameObject _deathParticle;

    [SerializeField] protected float _health = 100.0f;

    [SerializeField] protected Transform _topTransform;
    [SerializeField] protected Transform _bodyTransform;
    [SerializeField] protected Transform _meshTransform;

    protected bool _isDead = false;
    private const float _decalGroundOffset = 0.1f;
    private const float _decalrotationOffset = 90.0f;


    protected virtual void OnDeath()
    {
        Instantiate(_deathDecal, new Vector3(transform.position.x, _decalGroundOffset, transform.position.z), Quaternion.Euler(_decalrotationOffset, 0,0));
        Instantiate(_deathParticle,transform.position, Quaternion.identity);
        _meshTransform.gameObject.SetActive(false);
        
        AudioManager.PlaySound(SoundType.explosion);
        _isDead = true;
    }

    public void OnHealthChange(float delta)
    {
        if (_health <= 0)
            return;

        _health += delta;
        _health = Mathf.Max(0.0f,_health);

        if (_health <= 0.0f)
            OnDeath();
    }

    protected void AimTowards(Vector3 target)
    {
        Vector3 aimDirection = target - _topTransform.position;
        aimDirection.y = 0;

        AimTowardsDirection(aimDirection);
    }
    
    protected void AimTowardsDirection(Vector3 aimDirection)
    {
        aimDirection.y = 0;
        
        if(aimDirection.magnitude <= 0)
            return;

        Quaternion targetRotation = Quaternion.LookRotation(aimDirection, Vector3.up);

        switch (_topRotateType)
        {
            case RotateType.Slerp:
                _topTransform.rotation = Quaternion.Slerp(_topTransform.rotation, targetRotation, Time.deltaTime * _topRotateSpeed);
                break;
            case RotateType.RotateTowards:
                _topTransform.rotation = Quaternion.RotateTowards(_topTransform.rotation, targetRotation, Time.deltaTime * _topRotateSpeed);
                break;
            case RotateType.Direct:
                _topTransform.rotation = targetRotation;
                break;
        }
    }
}
