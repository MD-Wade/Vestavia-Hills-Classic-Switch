/// @description EditorInitCamera();
function EditorInitCamera() {

	cameraZoomMin = 1;
	cameraZoomMax = 12;
	cameraZoomAmount = 1;
	cameraZoomSpeed = 1;
	cameraPanSensitivity = 1.0;
	cameraWidth = __view_get( e__VW.WView, 0 );
	cameraHeight = __view_get( e__VW.HView, 0 );
	cameraBoundary = 512;



}
