/// @description EditorButtonStepInput();
function EditorButtonStepInput() {

	var _mouseX = device_mouse_x_to_gui(0);
	var _mouseY = device_mouse_y_to_gui(0);
	mouseInsideSave = mouseEntered;
	mouseInside = point_in_rectangle(_mouseX, _mouseY, buttonArea_x1, buttonArea_y1, buttonArea_x2, buttonArea_y2);
	mouseEntered = (mouseInside and !mouseInsideSave);
	mousePressed = mouse_check_button_pressed(mb_left) and (mouseInside);
	mouseReleased = mouse_check_button_released(mb_left) and (mouseInside);



}
