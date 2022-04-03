/// @description EditorDrawWallTool(x1, y1, x2, y2);
/// @param x1
/// @param  y1
/// @param  x2
/// @param  y2
function EditorDrawWallTool() {

	var _x1 = argument[0];
	var _y1 = argument[1];
	var _x2 = argument[2];
	var _y2 = argument[3];

	if (_x2 < _x1)  {
	    var _x2Save = _x2;
	    _x2 = _x1;
	    _x1 = _x2Save;
	}

	if (_y2 < _y1)  {
	    var _y2Save = _y2;
	    _y2 = _y1;
	    _y1 = _y2Save;
	}

	for (var xx = _x1; xx < _x2; xx += dsGridWallsCellSize) {
	    draw_sprite_ext(sprWall, 0, xx, _y1, 1, 1, 0, draw_get_colour(), draw_get_alpha());
	    draw_sprite_ext(sprWall, 0, xx, _y2, 1, 1, 0, draw_get_colour(), draw_get_alpha());
	}

	for (var yy = (_y1 + dsGridWallsCellSize); yy < (_y2 + dsGridWallsCellSize); yy += dsGridWallsCellSize) {
	    draw_sprite_ext(sprWall, 0, _x1, yy, 1, 1, 90, draw_get_colour(), draw_get_alpha());
	    draw_sprite_ext(sprWall, 0, _x2, yy, 1, 1, 90, draw_get_colour(), draw_get_alpha());
	}

	draw_tile(tlCorners, 0, _x1, _y1, 8);
	draw_tile(tlCorners, 0, _x2, _y1, 8);
	draw_tile(tlCorners, 0, _x1, _y2, 8);
	draw_tile(tlCorners, 0, _x2, _y2, 8);



}
