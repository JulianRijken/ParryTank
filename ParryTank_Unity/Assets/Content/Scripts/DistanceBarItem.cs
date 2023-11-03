using System;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class DistanceBarItem : MonoBehaviour
{
    [SerializeField] private float _followWorldPositonX;
    [SerializeField] private TextMeshProUGUI _distanceText;
    [SerializeField] private float _lerpSpeed;
    [SerializeField] private bool _destroyOutOfScreen;
    [SerializeField] private Image _icon;

    private float _targetPositionX;
    private bool _targetTransformSet = false;
    private Transform _targetTransform;
    private Camera _mainCamera;
    private Animator _animator;


    private void Start()
    {
        _animator = GetComponent<Animator>();
        _mainCamera = Camera.main;
    }

    private void LateUpdate()
    {
        if (_targetTransform != null)
            _followWorldPositonX = _targetTransform.position.x;
        else if(_targetTransformSet)
            Destroy(gameObject);
        
        _distanceText.text = Mathf.RoundToInt(_followWorldPositonX) + "m";

        Vector3 screenPoint = _mainCamera.WorldToScreenPoint(new Vector3(_followWorldPositonX,0));
        _targetPositionX = screenPoint.x;
        
        // Lerp to target position
        float newPositionX = Mathf.Lerp(transform.position.x, _targetPositionX, Time.deltaTime * _lerpSpeed);
        transform.position = new Vector3(newPositionX, transform.position.y);
        
        Vector3 viewPortPoint = _mainCamera.WorldToViewportPoint(new Vector3(_followWorldPositonX,0));

        
        _animator?.SetFloat("Time",viewPortPoint.x);
        
        if(_destroyOutOfScreen && viewPortPoint.x < 0.0f)
            Destroy(gameObject);
    }

    public void SetFollowPositionX(float newPositionX)
    {
        _followWorldPositonX = newPositionX;
    }

    public void SetTargetTransform(Transform targetTransform)
    {
        _targetTransform = targetTransform;
        _targetTransformSet = true;
    }

    public void SetIconColor(Color color)
    {
        if(_icon != null)
            _icon.color = color;
    }
}
