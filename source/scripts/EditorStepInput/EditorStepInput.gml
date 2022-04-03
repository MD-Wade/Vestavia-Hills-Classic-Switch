/// @description EditorStepInput();
function EditorStepInput() {

	inputMouseGridX = round_n(mouse_x, editorGridSize);
	inputMouseGridY = round_n(mouse_y, editorGridSize);
	inputMouseOverlap = point_in_rectangle(inputMouseGridX, inputMouseGridY, editorMapArea_x1, editorMapArea_y1, editorMapArea_x2, editorMapArea_y2);
	inputScroll = (mouse_wheel_up() - mouse_wheel_down());

	//Determine Scroll Type
	if keyboard_check(vk_control)   {
	    inputScrollType = 2;
	}   else if (keyboard_check(vk_shift))   {
	        inputScrollType = 1;
	    }   else    {
	        inputScrollType = 0;
	}
    
	inputIncrement = (keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left));



}
