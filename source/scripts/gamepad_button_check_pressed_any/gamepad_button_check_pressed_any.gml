/// @description gamepad_button_check_pressed_any(device);
/// @param device
function gamepad_button_check_pressed_any() {

	var _inIndex = argument[0];

	for ( var i = gp_face1; i < gp_axisrv; i++ ) {     
	    if ( gamepad_button_check_pressed( _inIndex, i ) ) return i;     
	}     
	return false;   



}
