/// @description PlayerStepInputsNoMovement();
function PlayerStepInputsNoMovement() {
	inputUp = false;
	inputLeft = false;
	inputDown = false;
	inputRight = false;
	inputAttack = gamepad_button_check(global.GP_ID, gp_shoulderrb);
	inputAttackPress = gamepad_button_check_pressed(global.GP_ID, gp_shoulderrb);
	inputInteractPress = gamepad_button_check_pressed(global.GP_ID, gp_shoulderlb) or gamepad_button_check_pressed(global.GP_ID, gp_face2);
	inputInteractHold = gamepad_button_check(global.GP_ID, gp_shoulderlb) or gamepad_button_check(global.GP_ID, gp_face2);
	inputInteractRelease = gamepad_button_check_released(global.GP_ID, gp_shoulderlb) or gamepad_button_check_released(global.GP_ID, gp_face2);
	inputReload = gamepad_button_check_pressed(global.GP_ID, gp_face3);
	inputCamera = false;
	inputWeaponNegative = gamepad_button_check_pressed(global.GP_ID, gp_padl);
	inputWeaponPositive = gamepad_button_check_pressed(global.GP_ID, gp_padr) or gamepad_button_check_pressed(global.GP_ID, gp_face4);
	inputDrop = gamepad_button_check_pressed(global.GP_ID, gp_face1);
        
	var _axisValueRH = gamepad_axis_value(global.GP_ID, gp_axisrh);
	var _axisValueRV = gamepad_axis_value(global.GP_ID, gp_axisrv);
        
	if (_axisValueRH != 0) or (_axisValueRV != 0)   {
	    animAngle = point_direction(0, 0, _axisValueRH, _axisValueRV);
	    inputMouseX = clamp(x + (_axisValueRH * 24), __view_get( e__VW.XView, playerIndex ), __view_get( e__VW.XView, playerIndex ) + __view_get( e__VW.WView, playerIndex ));
	    inputMouseY = clamp(y + (_axisValueRV * 24), __view_get( e__VW.YView, playerIndex ), __view_get( e__VW.YView, playerIndex ) + __view_get( e__VW.HView, playerIndex ));
	}
}
