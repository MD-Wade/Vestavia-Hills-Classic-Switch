/// @description MenuInitArrays();
function MenuInitArrays() {

	//Main Menu
	menuArray[MENU_TYPES.MAIN, 0] = "PLAY";
	menuArray[MENU_TYPES.MAIN, 1] = "OPTIONS";
	menuArray[MENU_TYPES.MAIN, 2] = "CREDITS";

	//Play
	menuArray[MENU_TYPES.PLAY, 0] = "CONTINUE";
	menuArray[MENU_TYPES.PLAY, 1] = "DIFFICULTY: " + MenuReturnDifficulty(g.gameDifficulty);
	menuArray[MENU_TYPES.PLAY, 2] = "BACK";

	//Options
	menuArray[MENU_TYPES.OPTIONS, 0] = "AUDIO OPTIONS";
	menuArray[MENU_TYPES.OPTIONS, 1] = "MISCELLANEOUS OPTIONS";
	menuArray[MENU_TYPES.OPTIONS, 2] = "BACK";

	//Audio Options
	menuArray[MENU_TYPES.AUDIO_OPTIONS, 0] = "MUSIC VOLUME: " + string(round(g.settingVolumeSound)) + "%";
	menuArray[MENU_TYPES.AUDIO_OPTIONS, 1] = "SOUND VOLUME: " + string(round(g.settingVolumeSound)) + "%";
	menuArray[MENU_TYPES.AUDIO_OPTIONS, 2] = "BACK";

	//Controls
	menuArray[MENU_TYPES.CONTROLS, 0] = "GAMEPAD CONFIGURATION";
	menuArray[MENU_TYPES.CONTROLS, 1] = "BACK";

	//Gamepad Configuration
	menuArray[MENU_TYPES.GAMEPAD_CONFIGURATION, 0] = "GAMEPAD CONFIGURATION";
	menuArray[MENU_TYPES.GAMEPAD_CONFIGURATION, 1] = "BACK";

	//Miscellaneous
	menuArray[MENU_TYPES.MISCELLAENOUS_OPTIONS, 0] = "BLOOD & GORE: " + return_toggle(g.settingGore);
	menuArray[MENU_TYPES.MISCELLAENOUS_OPTIONS, 1] = "BACK";

	cheatArray[0, 0] = vk_right;
	cheatArray[0, 1] = vk_right;
	cheatArray[0, 2] = vk_right;
	cheatArray[0, 3] = vk_up;
	cheatArray[0, 4] = vk_up;
	cheatArray[0, 5] = vk_right;
	cheatArrayPos = 0;

	//Web Based Specifics
	if g.settingWeb {
	    menuArray[MENU_TYPES.VIDEO_OPTIONS, 3] = "FULLSCREEN: UNAVAILABLE ON WEB";
	}




}
