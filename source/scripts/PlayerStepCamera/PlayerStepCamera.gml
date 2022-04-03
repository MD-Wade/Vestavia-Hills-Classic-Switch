/// @description PlayerStepCamera();
function PlayerStepCamera() {

	var _cameraX, _cameraY, _cameraDistance;

	//Far Looking
	if inputCamera  {
	    _cameraDistance = cameraLengthFar;
	}   else    {
	    _cameraDistance = cameraLength;
	}

	//Scale Camera
	__view_set( e__VW.WView, playerIndex, lerp(__view_get( e__VW.WView, playerIndex ), cameraWidth, cameraZoomSpeed * g.gameTimescale) );
	__view_set( e__VW.HView, playerIndex, (__view_get( e__VW.WView, playerIndex ) * cameraRatio) );

	//Tweening and Posititioning
	var _cameraMouseDistance = point_distance(x, y, inputMouseX, inputMouseY);
	cameraTweenDirection += random_range(-0.1, 0.1);
	cameraTweenX = lerp(cameraTweenX, lengthdir_x(cameraTweenAmount, cameraTweenDirection), 0.1 * g.gameTimescale);
	cameraTweenY = lerp(cameraTweenY, lengthdir_y(cameraTweenAmount, cameraTweenDirection), 0.1 * g.gameTimescale);
	_cameraX = x - (__view_get( e__VW.WView, playerIndex ) / 2) + lengthdir_x(min(_cameraMouseDistance, _cameraDistance), animAngle) + cameraTweenX + random_range(cameraShake * -1, cameraShake);
	_cameraY = y - (__view_get( e__VW.HView, playerIndex ) / 2) + lengthdir_y(min(_cameraMouseDistance, _cameraDistance), animAngle) + cameraTweenY + random_range(cameraShake * -1, cameraShake);

	if cameraRound  {
	    __view_set( e__VW.XView, playerIndex, round(lerp(__view_get( e__VW.XView, playerIndex ), _cameraX, cameraSpeed)) );
	    __view_set( e__VW.YView, playerIndex, round(lerp(__view_get( e__VW.YView, playerIndex ), _cameraY, cameraSpeed)) );
	}   else    {
	    __view_set( e__VW.XView, playerIndex, lerp(__view_get( e__VW.XView, playerIndex ), _cameraX, cameraSpeed) );
	    __view_set( e__VW.YView, playerIndex, lerp(__view_get( e__VW.YView, playerIndex ), _cameraY, cameraSpeed) );
	}

	//Reduce Shake
	cameraShake = lerp(cameraShake, 0, 0.2 * g.gameTimescale);



}
