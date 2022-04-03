/// @description PlayerInitCamera();
function PlayerInitCamera() {

	cameraLength = 32;
	cameraLengthFar = 128;
	cameraRound = false;

	cameraTweenDirection = 0;
	cameraTweenX = 0;
	cameraTweenY = 0;
	cameraTweenAmount = 24;
	cameraShake = 0;

	cameraWidthBase = __view_get( e__VW.WView, 0 );
	cameraWidthZoom = round(__view_get( e__VW.WView, 0 ) * 0.65);
	cameraRatio = (__view_get( e__VW.HView, 0 ) / __view_get( e__VW.WView, 0 ));
	cameraWidth = cameraWidthBase;
	cameraZoomSpeed = 0.01;

	if cameraRound 
	    cameraSpeed = 0.075;
	else
	    cameraSpeed = 0.12;



}
