/// @description Run Variables

event_inherited();

if tvEnabled {
    if instance_exists(lightIndex)  {
        with (lightIndex)   {
            lightAlpha = clamp(lightAlpha + rr(-0.025, 0.025), 0.5, 1);
            pl_light_set_alpha(lightAlpha);
            pl_light_set_color(lightColour);
        }
    }
    
    if !audio_is_playing(tvSoundIndex) and !g.settingWeb
        tvSoundIndex = sound_here(sndTV1, 8, true, 1);
    else    {
        if audio_is_playing(tvSoundIndex)   {
            audio_sound_pitch(tvSoundIndex, GameReturnMusicPitch());
        }
    }
}   else    {
    if instance_exists(lightIndex)  {
        with (lightIndex)
            pl_light_set_alpha(0);
    }
    
    if audio_is_playing(tvSoundIndex)
        audio_stop_sound(tvSoundIndex);
}

