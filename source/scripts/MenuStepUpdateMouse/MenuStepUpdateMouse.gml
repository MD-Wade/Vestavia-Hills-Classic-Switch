/// @description MenuStepUpdateMouse();
function MenuStepUpdateMouse() {

	var _stringScale = 1;
	var _stringBorder = (18 * _stringScale);
	var _posX = _stringBorder;
	var _posY = room_height - _stringBorder;

	var _mouseCollisionX1, _mouseCollisionY1, _mouseCollisionX2, _mouseCollisionY2;
	draw_set_font(fontMenu);
	for (var i = array_length_2d(menuArray, menuIndex) - 1; i >= 0; i --)    {
	    var _stringIndex = menuArray[menuIndex, i];
	    var _stringHeight = (string_height(string_hash_to_newline(_stringIndex)) * 1.15) * _stringScale;
	    var _stringWidth = (string_width(string_hash_to_newline(_stringIndex)) * 1.15) * _stringScale;
	    _mouseCollisionX1[i] = _posX;
	    _mouseCollisionY1[i] = _posY - _stringHeight;
	    _mouseCollisionX2[i] = _posX + _stringWidth;
	    _mouseCollisionY2[i] = _posY;
    
	    //Update Position
	    _posY -= _stringHeight;
	}
}
