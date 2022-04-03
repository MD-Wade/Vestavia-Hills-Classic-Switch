/// @description Initialize Surface

//Get Colour
var _Mix = wave(0, 1, 240, 0);
var _Colour = merge_colour(Colour1, Colour2, _Mix);
var _Size = 14;

if !surface_exists(Surface1) {
    Surface1 = surface_create_clear(surfaceWidth, surfaceHeight);
    surface_set_target(Surface1);
    draw_clear_alpha(_Colour, 1);
    surface_reset_target();
}

if !surface_exists(Surface2) {
    Surface2 = surface_create_clear(surfaceWidth, surfaceHeight);
    surface_set_target(Surface2);
    draw_clear_alpha(_Colour, 1);
    surface_reset_target();
}

