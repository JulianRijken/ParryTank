using UnityEngine;
using Random = UnityEngine.Random;

/// <summary>
/// Is used to apply a random material to the blocks
/// </summary>
public class Block : MonoBehaviour
{
    [Header("Material")]
    [SerializeField] private Material[] _materials;
    [SerializeField] private MeshRenderer _renderer;

    private void Awake()
    {
        if(_renderer != null && _materials.Length > 0)
            _renderer.material = _materials[Random.Range(0, _materials.Length)];
    }
}
