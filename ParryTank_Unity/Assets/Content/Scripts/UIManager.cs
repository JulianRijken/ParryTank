using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIManager : MonoBehaviour
{
    [SerializeField] private Transform _crosshair;

    private void Update()
    {
        Vector3 mousePos = Input.mousePosition;

        _crosshair.position = mousePos;
    }
}
