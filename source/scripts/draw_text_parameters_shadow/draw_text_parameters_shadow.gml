/// @description draw_text_parameters_shadow(halign, valign, x, y, string, alpha, colour, shadow_x, shadow_y, scale, [angle]);
/// @param halign
/// @param  valign
/// @param  x
/// @param  y
/// @param  string
/// @param  alpha
/// @param  colour
/// @param  shadow_x
/// @param  shadow_y
/// @param  scale
/// @param  [angle]
function draw_text_parameters_shadow() {

	var _hAlign = argument[0];
	var _vAlign = argument[1];
	var _xPos = argument[2];
	var _yPos = argument[3];
	var _String = argument[4];
	var _Alpha = argument[5];
	var _Colour = argument[6];
	var _shadowValueX = argument[7];
	var _shadowValueY = argument[8];
	var _Scale = argument[9];

	if (argument_count > 10) {
	    var _Angle = argument[10];
	}   else    {
	    var _Angle = 0;
	}

	var _oldAlpha = draw_get_alpha();

	draw_set_halign(_hAlign);
	draw_set_valign(_vAlign);
	draw_set_alpha(_Alpha);

	draw_set_colour(merge_colour(_Colour, c_black, 0.5));
	draw_text_transformed(_xPos + _shadowValueX, _yPos + _shadowValueY, string_hash_to_newline(_String), _Scale, _Scale, _Angle);
	draw_set_colour(_Colour);
	draw_text_transformed(_xPos - _shadowValueX, _yPos - _shadowValueY, string_hash_to_newline(_String), _Scale, _Scale, _Angle);

	draw_set_alpha(_oldAlpha);



}
