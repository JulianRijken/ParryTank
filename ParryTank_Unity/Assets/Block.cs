using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class Block : MonoBehaviour
{
    [SerializeField] private Material[] _materials;
    [SerializeField] private MeshRenderer _renderer;

    private void Awake()
    {
        _renderer.material = _materials[Random.Range(0, _materials.Length)];
    }
}
