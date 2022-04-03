/// @description draw_text_outline(x, y, text, scale, outline width, text color, border color)
/// @param x
/// @param  y
/// @param  text
/// @param  scale
/// @param  outline width
/// @param  text color
/// @param  border color
function draw_text_outline() {

	var _drawX = argument[0];
	var _drawY = argument[1];
	var _drawString = argument[2];
	var _drawScale = argument[3];
	var _drawOutlineWidth = argument[4] * _drawScale;
	var _drawColourText = argument[5];
	var _drawColourOutline = argument[6];

	draw_set_colour(_drawColourOutline);

	for (var xx = (_drawOutlineWidth * -1); xx < (_drawOutlineWidth); xx ++) {
	    for (var yy = (_drawOutlineWidth * -1); yy < (_drawOutlineWidth); yy ++) {
	        draw_text_transformed(_drawX + xx, _drawY + yy, string_hash_to_newline(_drawString), _drawScale, _drawScale, 0);
	    }
	}

	draw_set_colour(_drawColourText);
	draw_text_transformed(_drawX, _drawY, string_hash_to_newline(_drawString), _drawScale, _drawScale, 0);



}
