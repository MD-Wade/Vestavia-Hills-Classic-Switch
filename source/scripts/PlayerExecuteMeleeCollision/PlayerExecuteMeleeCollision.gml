/// @description PlayerExecuteMeleeCollision(id, x_array, y_array, hurt_type);
/// @param id
/// @param  x_array
/// @param  y_array
/// @param  hurt_type
function PlayerExecuteMeleeCollision() {

	return false;

	/*
	var _idAttacker = argument[0];
	var _xMeleeCollision = argument[1];
	var _yMeleeCollision = argument[2];
	var _hurtType = argument[3];

	var _isSelf = (_idAttacker == id);
	var _isDown = !(PlayerReturnUp(stateCurrent));
	var _isHit = false;

	if (_isSelf or _isDown)
	    exit;

	var _Check = rectangle_in_triangle(bbox_left, bbox_top, bbox_right, bbox_bottom, _xMeleeCollision[0], _yMeleeCollision[0], _xMeleeCollision[1], _yMeleeCollision[1], _xMeleeCollision[2],_yMeleeCollision[2])
	if _Check > 0   {
	    NetworkSendPlayerHurt(ClientID, _hurtType, _idAttacker.ClientID);
	}

	return _isHit;


/* end PlayerExecuteMeleeCollision */
}
