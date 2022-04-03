/// @description MenuStateCredits();
function MenuStateCredits() {

	if (creditsFinished)    {
	    stateCurrent = MENU_STATES.Fade;
	    fadeAction = MENU_FADE_ACTIONS.Begin;
	    fadeDirection = false;
	    GameExecuteMusicPlayIndex(bgmGuilty);
	}   

	creditsFinished = keyboard_check_released(vk_anykey) or
	mouse_check_button_released(mb_any) or
	gamepad_button_check_pressed(global.GP_ID, gp_face1) or
	gamepad_button_check_pressed(global.GP_ID, gp_face3) or 
	gamepad_button_check_pressed(global.GP_ID, gp_start);



}
