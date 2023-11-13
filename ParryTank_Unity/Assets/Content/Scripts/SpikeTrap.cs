using System;
using System.Collections;
using Julian.Sound;
using Sirenix.OdinInspector;
using UnityEngine;

[RequireComponent(typeof(Animator))]
public class SpikeTrap : MonoBehaviour
{
    [SerializeField] private float _chargeTime;
    [SerializeField] private float _upTime;
    [SerializeField] private float _downTime;
    [SerializeField] private float _startTimeOffset;
    [SerializeField] private float _startTimeOffsetMultiplier = 1.0f;
    [SerializeField] private Vector3 _trapExtends;
    [SerializeField] private Vector3 _trapCenter;

    [InfoBox("State goes 0(charge) 1(up) 2(down)")]
    [SerializeField] private string _animatorStateKey;

    
    private Animator _animator;
    
    private void Start()
    {
        _animator = GetComponent<Animator>();
        StartCoroutine(SpikeTrapMoveCoroutine());
    }

    /// <summary>
    /// Handles the spike movement and updates the state of the animator
    /// </summary>
    IEnumerator SpikeTrapMoveCoroutine()
    {
        float startOffset = _startTimeOffset * _startTimeOffsetMultiplier;
        float totalWaitTime = _chargeTime + _downTime + _upTime;

        // Makes sure that if the wait time is really large it does not keep waiting to start it's loop
        while (startOffset > totalWaitTime)
            startOffset -= totalWaitTime;
        
        yield return new WaitForSeconds(startOffset);

        while (true)
        {
            _animator.SetInteger(_animatorStateKey, 0);
            yield return new WaitForSeconds(_chargeTime);
            
            _animator.SetInteger(_animatorStateKey, 1);
            yield return new WaitForSeconds(_downTime);

            _animator.SetInteger(_animatorStateKey, 2);
            yield return new WaitForSeconds(_upTime);
        }
    }

    /// <summary>
    /// Triggered by the spike up animation
    /// </summary>
    public void OnSpikeAttack()
    {
        var hitColliders =  Physics.OverlapBox(_trapCenter + transform.position, _trapExtends);

        foreach (Collider hitCollider in hitColliders) 
        {
            IDamageable damageable = hitCollider.GetComponent<IDamageable>();
            damageable?.OnHealthChange(-float.MaxValue);
        }
        
        // Only play when on screen 
        if(GameManager.IsPointOnScreen(transform.position))
            AudioManager.PlaySound(SoundType.spikeTrapAttack,0.8f);
    }
    
    #if UNITY_EDITOR
    private void OnDrawGizmos()
    {
        Gizmos.DrawWireCube(_trapCenter + transform.position, _trapExtends * 2.0f);
    }
    #endif
}
