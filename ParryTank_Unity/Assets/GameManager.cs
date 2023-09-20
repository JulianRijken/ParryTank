using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{

    [SerializeField] private PlayerController _playerController;
    
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
}
