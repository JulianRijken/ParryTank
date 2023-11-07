using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Roller : MonoBehaviour
{
    private void Update()
    {
        Collider[] colliders = Physics.OverlapCapsule(transform.position + Vector3.forward * 8.5f,
            transform.position + Vector3.forward * -8.5f, 1.0f);

        foreach (Collider collider in colliders)
        {
            IDamageable damageable = collider.GetComponent<IDamageable>();
            damageable?.OnHealthChange(-float.MaxValue);
            
           //Block block = collider.GetComponent<Block>();
           //if (block)
           //{
           //    Destroy(block.gameObject);
           //}
        }
    }
}
