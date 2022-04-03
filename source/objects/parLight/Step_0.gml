/// @description Flicker

if lightFlickerEnabled  {

    //Sound
    if !audio_is_playing(lightFlickerSound) {
        lightFlickerSound = sound_here(sndLightHum, 192, true, rr(0.95, 1.0));
        audio_sound_gain(lightFlickerSound, 0, 0);
    }

    //Tick Increment
    lightFlickerTick = approach(lightFlickerTick, lightFlickerTickTarget, 1);
    
    //Toggle
    if lightFlickerTick >= lightFlickerTickTarget   {
        lightFlickerState = !lightFlickerState;
        if lightFlickerState
            lightFlickerTickTarget = irandom(lightFlickerDuration);
        else
            lightFlickerTickTarget = irandom_range(lightFlickerTickMin, lightFlickerTickMax);
    }
    
    //Update Effect
    if lightFlickerState    {
        var _lightAlpha = rr(0, 1);
        pl_light_set_alpha(0);
        audio_sound_gain(lightFlickerSound, _lightAlpha, 0);
    }   else    {
        pl_light_set_alpha(1);
        audio_sound_gain(lightFlickerSound, 1, 0);
    }
}

