/// @description Run Variables

event_inherited();

if lightEnabled {
    if !audio_is_playing(soundIndex) and soundEnabled    {
        soundIndex = sound_here(sndLightHum, 64, true, rr(0.98, 1.0));
    }
}   else    {
    if audio_is_playing(soundIndex)    {
        audio_stop_sound(soundIndex);
    }
}

