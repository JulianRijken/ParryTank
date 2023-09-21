using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{

    [SerializeField] private PlayerController _playerController;
    [SerializeField] private Transform _mainCameraTransform;
    [SerializeField] private AnimationCurve _cameraMoveCurve;
    [SerializeField] private float _levelOffset;
    [SerializeField] private float _transitionTime;
    
    public static GameManager Instance { get; private set; }

    private void Awake()
    {
        Instance = this;
    }

    public static PlayerController GetPlayer()
    {
        return Instance._playerController;
    }

    void Start()
    {
        Cursor.lockState = CursorLockMode.Confined;
        Cursor.visible = false;
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.L))
        {
            StartCoroutine(TransitionCoroutine());
        }
    }

    private IEnumerator TransitionCoroutine()
    {
        float alpha = 0f;
 
        while (true)
        {
            Vector3 cameraPosition = _mainCameraTransform.position;
            cameraPosition.x = _cameraMoveCurve.Evaluate(alpha) * _levelOffset;
            _mainCameraTransform.position = cameraPosition;
            
            if (alpha >= 1f) break;
 
            yield return new WaitForEndOfFrame();
 
            alpha = Mathf.Clamp01(alpha + (Time.deltaTime * (1.0f / _transitionTime)));
        }
    }
}
