/// @description PlayerInitInputs();
function PlayerInitInputs() {

	enum PLAYER_INPUT_SCHEMES   {
	    Keyboard, Gamepad
	}

	playerInputScheme = -1;
	playerInputIndex = -1;
	playerInputUp = -1;
	playerInputLeft = -1;
	playerInputDown = -1;
	playerInputRight = -1
	playerInputAttack = -1;
	playerInputInteract = -1;
	playerInputReload = -1;
	playerInputCamera = -1;
	playerInputNegative = -1;
	playerInputPositive = -1;

	inputUp = false;
	inputLeft = false;
	inputDown = false;
	inputRight = false;
	inputAttack = false;
	inputAttackPress = false;
	inputInteractPress = false;
	inputInteractHold = false;
	inputInteractRelease = false;
	inputReload = false;
	inputCamera = false;

	inputMouseX = x;
	inputMouseY = y;
	inputMouseSensitivity = 0.4;



}
