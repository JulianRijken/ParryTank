using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LevelPart : MonoBehaviour
{
    [SerializeField] private Vector3 _startPoint;
    [SerializeField] private Vector3 _endPoint;

    public Vector3 StartPoint => _startPoint;
    public Vector3 EndPoint => _endPoint;
    
    
    private void OnDrawGizmos()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawSphere(transform.position + _endPoint,0.5f);
        
        Gizmos.color = Color.green;
        Gizmos.DrawSphere(transform.position + _startPoint,0.5f);
    }
}
