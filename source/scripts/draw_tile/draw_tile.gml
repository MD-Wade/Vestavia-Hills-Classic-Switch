/// @description draw_tile(tileset, index, x, y, [size]);
/// @param tileset
/// @param  index
/// @param  x
/// @param  y
/// @param  [size]
function draw_tile() {

	var _inTileset = argument[0];
	var _inIndex = argument[1];
	var _inX = argument[2];
	var _inY = argument[3];

	var _tileSize = 16;
	if (argument_count > 4) {
	    _tileSize = argument[4];
	}

	var _offsetX = 0;
	var _offsetY = 0;

	//Position
	while (_inIndex > 0)    {
	    _offsetX += _tileSize;
	    if (_offsetX >= (background_get_width(_inTileset)))  {
	        _offsetX = 0;
	        _offsetY += _tileSize;
	    }
    
	    _inIndex -= 1;
	}

	draw_background_part_ext(_inTileset, _offsetX, _offsetY, _tileSize, _tileSize, _inX, _inY, 1, 1, draw_get_colour(), draw_get_alpha());



}
