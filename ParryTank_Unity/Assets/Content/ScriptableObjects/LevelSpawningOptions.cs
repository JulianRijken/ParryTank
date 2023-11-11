using System;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

[CreateAssetMenu(fileName = "LevelSpawningSettings", menuName = "ScriptableObjects/LevelSpawningSettings", order = 1)]
public class LevelSpawningOptions : ScriptableObject
{
    [SerializeField] private WeightedLevelPart[] LevelParts;

    public LevelPart GetLevelPart(float gameTimeInMinutes)
    {
        List<LevelPart> optionalLevelParts = new List<LevelPart>();
        foreach (var levelPart in LevelParts)
        {
            if(gameTimeInMinutes >= levelPart.SpawnAfterMinutes)
                optionalLevelParts.Add(levelPart.LevelPartPrefab);
        }

        if (optionalLevelParts.Count > 0)
            return optionalLevelParts[Random.Range(0, optionalLevelParts.Count)];
        
        return null;
    }
}

[Serializable]
public struct WeightedLevelPart
{
    public LevelPart LevelPartPrefab;
    public float SpawnAfterMinutes;
}
