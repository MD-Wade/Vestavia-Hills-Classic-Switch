/// @description GameInitAudio();
function GameInitAudio() {
	gridSoundsWidth = 2;
	gridSoundsHeight = 1;
	gridSounds = ds_grid_create(gridSoundsWidth, gridSoundsHeight);

	soundGoreIndex = -1;
	soundGoreKillIndex = -1;

	soundsLoadedMusic = false;
	soundsLoadedSound = false;
	soundsLoadedPercentage = 0;

	draw_set_font(fontGUI);
	loadingString = "LOADING SOUNDS...#PLEASE WAIT!";
	var _stringHeight = string_height(string_hash_to_newline(loadingString)) * 1.5;
	loadingTextX = __view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 ) / 2);
	loadingTextY = __view_get( e__VW.YView, 0 ) + (__view_get( e__VW.HView, 0 ) / 2);
	loadingBarX1 = loadingTextX - 256;
	loadingBarY1 = loadingTextY + (_stringHeight / 2) + 4;
	loadingBarX2 = loadingTextX + 256;
	loadingBarY2 = loadingBarY1 + 24;

	continueTextX = __view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 ) / 2);
	continueTextY = __view_get( e__VW.YView, 0 ) + (__view_get( e__VW.HView, 0 ) / 2);
	continueString = "CLICK TO CONTINUE";



}
