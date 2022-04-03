/// @description EditorStepCamera();
function EditorStepCamera() {

	//Zooming
	if (inputScrollType == 2)   {
	    cameraZoomAmount = clamp(cameraZoomAmount + (inputScroll * cameraZoomSpeed), cameraZoomMin, cameraZoomMax);
	    var _mouseInterpX = (mouse_x - __view_get( e__VW.XView, 0 )) / __view_get( e__VW.WView, 0 );
	    var _mouseInterpY = (mouse_y - __view_get( e__VW.YView, 0 )) / __view_get( e__VW.HView, 0 );
	    __view_set( e__VW.WView, 0, cameraWidth / cameraZoomAmount );
	    __view_set( e__VW.HView, 0, cameraHeight / cameraZoomAmount );
	    if (inputScroll != 0)  {
	        __view_set( e__VW.XView, 0, (mouse_x - (__view_get( e__VW.WView, 0 ) * _mouseInterpX)) );
	        __view_set( e__VW.YView, 0, (mouse_y - (__view_get( e__VW.HView, 0 ) * _mouseInterpY)) );
	    }
	}
        
	//Panning
	cameraInputPan = mouse_check_button(mb_middle);

	if (cameraInputPan) {
	    var _mouseDeltaX = ((saveMouseX - window_mouse_get_x()) / cameraZoomAmount);
	    var _mouseDeltaY = ((saveMouseY - window_mouse_get_y()) / cameraZoomAmount);
	    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (_mouseDeltaX * cameraPanSensitivity) );
	    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (_mouseDeltaY * cameraPanSensitivity) );
	}

	//Save Mouse Positions
	saveMouseX = window_mouse_get_x();
	saveMouseY = window_mouse_get_y();

	//Clamp Camera
	__view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ), cameraBoundary * -1, ((editorMapWidth) + cameraBoundary) - __view_get( e__VW.WView, 0 )) );
	__view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ), cameraBoundary * -1, ((editorMapHeight) + cameraBoundary) - __view_get( e__VW.HView, 0 )) );



}
