/// @description draw_text_parameters(halign, valign, x, y, string, alpha, colour, shadow, scale, [angle]);
/// @param halign
/// @param  valign
/// @param  x
/// @param  y
/// @param  string
/// @param  alpha
/// @param  colour
/// @param  shadow
/// @param  scale
/// @param  [angle]
function draw_text_parameters() {

	var _hAlign = argument[0];
	var _vAlign = argument[1];
	var _xPos = argument[2];
	var _yPos = argument[3];
	var _String = argument[4];
	var _Alpha = argument[5];
	var _Colour = argument[6];
	var _shadowValue = argument[7];
	var _Scale = argument[8];

	if (argument_count > 9) {
	    var _Angle = argument[9];
	}   else    {
	    var _Angle = 0;
	}

	var _oldAlpha = draw_get_alpha();

	draw_set_halign(_hAlign);
	draw_set_valign(_vAlign);
	draw_set_alpha(_Alpha);

	if _shadowValue != 0    {
	    draw_set_colour(merge_colour(_Colour, c_black, 0.5));
	    draw_text_transformed(_xPos + (_shadowValue / 2), _yPos + (_shadowValue / 2), string_hash_to_newline(_String), _Scale, _Scale, _Angle);
	}

	draw_set_colour(_Colour);
	draw_text_transformed(_xPos - (_shadowValue / 2), _yPos - (_shadowValue / 2), string_hash_to_newline(_String), _Scale, _Scale, _Angle);

	draw_set_alpha(_oldAlpha);



}
