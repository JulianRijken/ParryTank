using System.Collections.Generic;
using UnityEngine;

namespace Julian.Sound
{
    // TODO: Add option for delay/wait between allowing to play sounds and max sounds
    public class AudioManager : MonoBehaviour
    {
        private GameSounds m_GameSounds;
        private List<AudioSource> m_PooledAudioSources = new List<AudioSource>();
        
        private static AudioManager m_Instance;
        
        public static AudioManager Instance
        {
            get
            {
                if (!m_Instance)
                {
                    m_Instance = new GameObject(typeof(AudioManager).Name).AddComponent<AudioManager>();
                    m_Instance.m_GameSounds = Resources.Load<GameSounds>("GameSounds/GameSounds");
                    DontDestroyOnLoad(m_Instance);
                }

                return m_Instance;
            }
        }
        
        
        /// <summary>
        /// Returns an available audio source from the pool 
        /// </summary>
        public AudioSource GetAudioSource()
        {
            AudioSource audioSource = null;

            for (int i = 0; i < m_PooledAudioSources.Count; i++)
            {
                if (!m_PooledAudioSources[i].isPlaying)
                {
                    audioSource = m_PooledAudioSources[i];
                    break;
                }
            }

            if (!audioSource)
            {
                audioSource = gameObject.AddComponent<AudioSource>();
                audioSource.playOnAwake = false;
                m_PooledAudioSources.Add(audioSource);
            }

            return audioSource;
        }
        
        // TODO: Add something like overwrite sterio pan / overwride clip or whatever overflows so you can do like left right wheel sound in left and right ear :)

        /// <summary>
        /// Plays sound globally
        /// </summary>
        /// <param name="Sound Type">From GameSounds Enum</param>
        /// <param name="Volume Scale">Change volume</param>
        public static void PlaySound(SoundType soundType, float volumeScale = 1f)
        {
            if(Instance != null)
                Instance.PlaySoundOnInstance(soundType, volumeScale);
            else
                Debug.LogWarning("No Audio Manager in scene");
        }

        private AudioSource PlaySoundOnInstance(SoundType soundType, float volumeScale = 1f)
        {
            if (m_GameSounds == null)
                Debug.LogWarning("AddSounds to: GameSounds/GameSounds");

            Sound sound = m_GameSounds.GetAudio(soundType);
            AudioClip clip = sound.Clip;
            if (!clip)
            {
                Debug.LogWarning($"No sound for: {soundType}");
                return null;
            }

            AudioSource audioSource = GetAudioSource();

            audioSource.pitch = sound.UsePitchRange ? Random.Range(sound.PitchRange.x, sound.PitchRange.y) : sound.Pitch;
            audioSource.volume = sound.UseVolumeRange ? Random.Range(sound.VolumeRange.x, sound.VolumeRange.y) : sound.Volume;
            audioSource.outputAudioMixerGroup = sound.MixerGroup;
            audioSource.clip = clip;
            audioSource.Play();

            return audioSource;
        }
    }

}


