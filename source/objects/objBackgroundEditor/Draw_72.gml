/// @description Draw Background

texture_set_interpolation(true);

//Make Sure our Surfaces Exist
event_user(0);

//Get Colour
var _Mix = wave(0, 1, 240, 0);
var _Colour = merge_colour(Colour1, Colour2, _Mix);
var _Size = 14;


//Create Splatters
var _xPos = irandom(__view_get( e__VW.WView, 0 ));
var _yPos = irandom(__view_get( e__VW.HView, 0 ));
_Amt = irandom_range(12, 24);
for (var i = 0; i < _Amt; i ++)    {
    var _ID = instance_create(_xPos, _yPos, objBackgroundSplatter);
    _ID.Colour = _Colour;
}

//Draw Splatters
surface_set_target(Surface1);
with (objBackgroundSplatter)  {
    draw_set_alpha(image_alpha);
    draw_set_colour(Colour);
    draw_circle(x, y, _Size * image_xscale, false);
}

//Cool Drawing
var _Dir = wave(0, 180, 16, 0);
var _xAdd = lengthdir_x(1, _Dir);
var _yAdd = lengthdir_y(1, _Dir);
var _Angle = wave(-1, 1, 1200, 0);
var _addSpeed = 0.0002;
draw_surface_center_ext(Surface1, (surfaceWidth / 2) + _xAdd, (surfaceHeight / 2) + _yAdd, 1 + _addSpeed, 1 + _addSpeed, _Angle, c_white, 1, 0, 0);
surface_reset_target();

draw_surface_ext(Surface1, __view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), 1 / objEditor.cameraZoomAmount, 1 / objEditor.cameraZoomAmount, 0, c_white, 1);

texture_set_interpolation(false);
draw_set_alpha(1);

