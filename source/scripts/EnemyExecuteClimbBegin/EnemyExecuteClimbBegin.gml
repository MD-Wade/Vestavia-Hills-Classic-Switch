/// @description EnemyExecuteClimbBegin(window_id);
/// @param window_id
function EnemyExecuteClimbBegin() {

	var _idWindow = argument[0];
	var _posX = mean(_idWindow.bbox_left, _idWindow.bbox_right);
	var _posY = mean(_idWindow.bbox_top, _idWindow.bbox_bottom);
	var _windowDistance = 4;
	var _windowDistanceFinal = 12;

	windowToX = _posX;
	windowToY = _posY;

	//End Path
	path_end();

	switch (_idWindow.image_angle)  {
	    case 0:
	        _posY += _windowDistance;
	        windowToY -= _windowDistanceFinal;
	        break;
	    case 90:
	        _posX += _windowDistance;
	        windowToX -= _windowDistanceFinal;
	        break;
	    case 180:
	        _posY -= _windowDistance;
	        windowToY += _windowDistanceFinal;
	        break;
	    case 270:
	        _posX -= _windowDistance;
	        windowToX += _windowDistanceFinal;
	        break;
	}

	climbCheck = true;
	stateCurrent = ESTATES.enterWindow;
	animAngle = _idWindow.image_angle + 90;
	animSpriteCurrent = animSpriteClimb;
	x = _posX;
	y = _posY;



}
