/// @description draw_progressbar(x1, y1, x2, y2, amount, border, colour);
/// @param x1
/// @param  y1
/// @param  x2
/// @param  y2
/// @param  amount
/// @param  border
/// @param  colour
function draw_progressbar() {

	var _x1 = argument[0];
	var _y1 = argument[1];
	var _x2 = max(argument[2], _x1);
	var _y2 = max(argument[3], _y1);
	var _inAmount = argument[4];
	var _inBorder = argument[5];
	var _inColour = argument[6];
	var _drawAmt = (_inAmount / 100);
	var _x22 = (_x1 + ((_x2 - _x1) * _drawAmt));
	var _saveColour = draw_get_colour();

	draw_set_colour(c_black);
	draw_rectangle(_x1, _y1, _x2, _y2, false);
	draw_set_colour(_inColour);
	draw_rectangle(_x1 + _inBorder, _y1  + _inBorder, _x22 - _inBorder, _y2 - _inBorder, false);
	draw_set_colour(_saveColour);



}
