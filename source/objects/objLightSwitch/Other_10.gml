/// @description Light Switch

var _toggledLight = false;

//Toggle Lights
with (objLightCeiling)  {
    if (lightSwitchIndex == other.lightSwitchIndex)   {
        lightEnabled = !lightEnabled;
        _toggledLight = true;
    }
}   

//Play Sound
if _toggledLight    {
    sound_here(sndSwitch1, 64, false, rr(0.98, 1.0));
    image_index = wrap(image_index + 1, 0, image_number - 1);
}

