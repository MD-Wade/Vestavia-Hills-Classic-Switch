/// @description GameStepGlobalHotkeys();
function GameStepGlobalHotkeys() {

	//Fullscreen
	if keyboard_check_pressed(vk_f10)   {
	    if !g.settingWeb    {
	        window_set_fullscreen(!window_get_fullscreen());
	    }
	}

	//Screenshot
	if keyboard_check_pressed(vk_f12)   {
	    save_screenshot("Screenshot", "Screenshots\\");
	}



}
