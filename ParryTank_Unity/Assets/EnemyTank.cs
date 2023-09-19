using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyTank : BaseTank
{
    protected override void OnDeath()
    {
        base.OnDeath();
        Destroy(gameObject);
    }
}
