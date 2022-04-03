/// @description Light

with (lightIndex)   {
    lightAlpha = clamp(lightAlpha + rr(-0.025, 0.025), 0.5, 1);
    pl_light_set_alpha(lightAlpha);
    pl_light_set_color(lightColour);
}

