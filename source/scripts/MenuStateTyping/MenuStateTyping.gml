/// @description MenuStateTyping();
function MenuStateTyping() {

	keyboard_string = string_copy(keyboard_string, 1, 24);

	if keyboard_check_pressed(vk_enter) {
	    MenuExecuteTypingFinish();
	}



}
