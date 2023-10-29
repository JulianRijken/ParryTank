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

    private float targetPositionX;
    private Camera _mainCamera;
    private Animator _animator;

    private void Start()
    {
        _animator = GetComponent<Animator>();
        _mainCamera = Camera.main;
    }

    private void LateUpdate()
    {
        _distanceText.text = Mathf.RoundToInt(_followWorldPositonX) + "m";

        Vector3 screenPoint = _mainCamera.WorldToScreenPoint(new Vector3(_followWorldPositonX,0));
        targetPositionX = screenPoint.x;
        
        // Lerp to target position
        float newPositionX = Mathf.Lerp(transform.position.x, targetPositionX, Time.deltaTime * _lerpSpeed);
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
}
