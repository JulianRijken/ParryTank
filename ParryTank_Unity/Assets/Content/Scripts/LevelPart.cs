using System;
using UnityEngine;

public class LevelPart : MonoBehaviour
{
    [SerializeField] private Vector3 _startPoint;
    [SerializeField] private Vector3 _endPoint;

#if UNITY_EDITOR
    [SerializeField] private bool _drawDebug = false;
#endif

    public Vector3 StartPoint => _startPoint;
    public Vector3 EndPoint => _endPoint;

#if UNITY_EDITOR
    private void OnDrawGizmos()
    {
        if (!_drawDebug)
            return;

        Gizmos.color = Color.red;
        Gizmos.DrawSphere(transform.position + _endPoint,0.5f);
        
        Gizmos.color = Color.green;
        Gizmos.DrawSphere(transform.position + _startPoint,0.5f);

        Gizmos.color = new Color(0,1,0,0.1f);
        Vector3 size = new Vector3(Mathf.Abs(_startPoint.x) + Mathf.Abs(_endPoint.x), 1, 17.0f);
        Vector3 center = Vector3.Lerp(_startPoint,_endPoint,0.5f);
        size.y = 0;
        center.y = 0.001f;
        Gizmos.DrawCube(center + transform.position, size);

        Gizmos.color = Color.green;
        Gizmos.DrawWireCube(center + transform.position, size);
    }
#endif
}
