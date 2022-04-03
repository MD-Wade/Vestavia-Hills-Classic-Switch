/// @description MenuStepUpdateInputs();
function MenuStepUpdateInputs() {

	var _inputUp = (gamepad_button_check_pressed(global.GP_ID, gp_padu));
	var _inputLeft = (gamepad_button_check_pressed(global.GP_ID, gp_padl));
	var _inputDown = (gamepad_button_check_pressed(global.GP_ID, gp_padd));
	var _inputRight = (gamepad_button_check_pressed(global.GP_ID, gp_padr));
	var _inputDeltaV = sign(_inputDown - _inputUp);
	var _inputDeltaH = sign(_inputRight - _inputLeft);
	inputEnter = (gamepad_button_check_pressed(global.GP_ID, gp_start) or (gamepad_button_check_pressed(global.GP_ID, gp_face2)));

	menuSelected = wrap(menuSelected + _inputDeltaV, 0, array_length_2d(menuArray, menuIndex));
	MenuExecuteActionsHorizontal(_inputDeltaH);



}
