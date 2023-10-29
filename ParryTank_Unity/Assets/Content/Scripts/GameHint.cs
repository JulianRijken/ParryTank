using System;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.InputSystem;

[RequireComponent(typeof(Animator))]
public class GameHint : MonoBehaviour
{
    [SerializeField] private InputActionReference _inputAction;

    private Animator _animator;
    [SerializeField] private UnityEvent _onHintTriggered;

    private void Awake()
    {
        _animator = GetComponent<Animator>();
        _inputAction.action.Enable();
        _inputAction.action.performed += OnKeyPressed;
    }

    private void OnDestroy()
    {
        _inputAction.action.performed -= OnKeyPressed;
    }

    private void OnKeyPressed(InputAction.CallbackContext obj)
    {
        // Not efficient but gets the job done for now
        var viewportPosition = Camera.main.WorldToViewportPoint(transform.position);
        if(viewportPosition.x is > 1.0f or < 0.0f )
            return;
        
        if(GameManager.GetGameState != GameManager.GameState.InGame)
            return;
        
        _onHintTriggered?.Invoke();
        _animator.SetTrigger("Trigger");
    }
}
