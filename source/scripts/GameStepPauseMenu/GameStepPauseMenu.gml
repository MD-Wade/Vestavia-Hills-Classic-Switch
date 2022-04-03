/// @description GameStepPauseMenu();
function GameStepPauseMenu() {

	var _inputUp = (gamepad_button_check_pressed(global.GP_ID, gp_padu));
	var _inputLeft = (gamepad_button_check_pressed(global.GP_ID, gp_padl));
	var _inputDown = (gamepad_button_check_pressed(global.GP_ID, gp_padd));
	var _inputRight = (gamepad_button_check_pressed(global.GP_ID, gp_padr));
	var _inputDeltaV = sign(_inputDown - _inputUp);
	var _inputDeltaH = sign(_inputRight - _inputLeft);
	var _inputEnter = (gamepad_button_check_pressed(global.GP_ID, gp_face2) or (gamepad_button_check_pressed(global.GP_ID, gp_start)));

	//Wrap
	pauseMenuSelected = wrap(pauseMenuSelected + _inputDeltaV, 1, array_length_2d(pauseMenuArray, pauseMenuIndex));
	if _inputEnter   {
	    if (pauseTick >= pauseTickMax)  {
	        switch (pauseMenuIndex) {
	            case 0:
	                switch (pauseMenuSelected)  {
	                    case 1:
	                        pauseMenuTrigger = true;
	                        pauseTick = 0;
	                        break;
	                    case 2:
	                        pauseMenuIndex = 1;
	                        pauseMenuSelected = 2;
	                        break;
	                }   break;
	            case 1:
	                switch (pauseMenuSelected)  {
	                    case 1:
	                        guiWarningAlpha = 0;
	                        pauseMenuTrigger = true;
	                        stateCurrent = GSTATES.Menu;
	                        audio_stop_all();
	                        room_goto(roomMenu);
	                        break;
	                    case 2:
	                        pauseMenuIndex = 0;
	                        pauseMenuSelected = 2;
	                        break;
	                }   break;
	        }
	    }
	}

	pauseTick = approach(pauseTick, pauseTickMax, 1);



}
