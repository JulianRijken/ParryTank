using Julian.Sound;
using UnityEngine;

public class Bullet : MonoBehaviour
{
    
    [SerializeField] private float _flySpeed;
    [SerializeField] private float _rotateSpeed;
    [SerializeField] private int _maxBounces;
    [SerializeField] private float _damage;
    [SerializeField] private float _maxLifeTime;
    [SerializeField] private GameObject _hitWallParticle;
    [SerializeField] private GameObject _destroyPartice;

    [Tooltip("Optional for homing bullets")]
    [SerializeField] private Transform _target;
    [SerializeField] private float _homingRotateSpeed;

    private Rigidbody _rigidbody;
    private Vector2 _planerVelocity;
    private int _timesBounced;
    
    
    private void Awake()
    {
        _rigidbody = GetComponent<Rigidbody>();
    }

    private void Start()
    {
        SetBulletDirection(transform.forward);

        Invoke(nameof(DestroyBullet), _maxLifeTime);
    }

    private void Update()
    {
        if (_target)
        {
            Vector3 targetDirection = (_target.position - transform.position).normalized;
            Vector3 currentVelocityDirection = new Vector3(_planerVelocity.x, 0, _planerVelocity.y).normalized;
            Vector3 newVelocityDirection = Vector3.RotateTowards(currentVelocityDirection, targetDirection, _homingRotateSpeed * Time.deltaTime, 0);

            // Update the planar velocity based on the new direction
            _planerVelocity.x = newVelocityDirection.x;
            _planerVelocity.y = newVelocityDirection.z;
        }

        // Apply velocity
        // Not done in fixed update, not needed as the rigidbody still handles the physics in the fixed time step
        _rigidbody.velocity = new Vector3(_planerVelocity.x, 0, _planerVelocity.y) * _flySpeed;

        // Rotate to velocity
        Quaternion targetRotation = Quaternion.LookRotation(new Vector3(_planerVelocity.x, 0, _planerVelocity.y));
        transform.rotation = targetRotation;
    }
    
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.CompareTag("Bullet"))
        {
            DestroyBullet();
            return;
        }
        
        var damageableInterface = collision.gameObject.GetComponent<IDamageable>();
        if (damageableInterface != null)
        {
            damageableInterface.OnHealthChange(-_damage);
            DestroyBullet();
            return;
        }
        
        _timesBounced++;
        if (_timesBounced > _maxBounces)
        {
            DestroyBullet();
            return;
        }
        
        Vector3 wallNormal = collision.GetContact(0).normal;
        Vector2 plannerWallNormal = new Vector2(wallNormal.x, wallNormal.z);
        
        Vector2 reflectedVector = Vector2.Reflect(_planerVelocity.normalized,plannerWallNormal);
        _planerVelocity = reflectedVector;

        Instantiate(_hitWallParticle, transform.position, Quaternion.identity);
        AudioManager.PlaySound(SoundType.bulletBounce);
    }

    private void DestroyBullet()
    {
        Instantiate(_destroyPartice, transform.position, Quaternion.identity);
        AudioManager.PlaySound(SoundType.bulletExplode);
        Destroy(gameObject);
    }
    
    public void SetBulletDirection(Vector3 direction)
    {
        Vector2 planarDirection = new Vector2(direction.normalized.x, direction.normalized.z);
        _planerVelocity = planarDirection;
    }

    public void SetTarget(Transform target)
    {
        _target = target;
    }
}
