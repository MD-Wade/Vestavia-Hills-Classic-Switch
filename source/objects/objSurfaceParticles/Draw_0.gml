/// @description Draw

if surface_exists(g.surfaceParticles)   {
    draw_surface_ext(g.surfaceParticles, 0, 0, (1 / g.settingResolutionScale), (1 / g.settingResolutionScale), 0, c_white, 1);
}   else    {
    g.surfaceParticles = surface_create_clear(room_width * g.settingResolutionScale, room_height * g.settingResolutionScale);
}

