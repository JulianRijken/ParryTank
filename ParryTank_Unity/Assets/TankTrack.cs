using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.Universal;

public class TankTrack : MonoBehaviour
{
    [SerializeField] private float _fadeOutSpeed;
    [SerializeField] private DecalProjector _decalProjector;


    private void Update()
    {
        _decalProjector.fadeFactor -= Time.deltaTime * _fadeOutSpeed;

        if( _decalProjector.fadeFactor < 0.0f)
            Destroy(gameObject);
    }
    
    
}
