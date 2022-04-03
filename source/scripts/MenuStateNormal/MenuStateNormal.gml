/// @description MenuStateNormal();
function MenuStateNormal() {

	MenuStepUpdateInputs();
	MenuStepUpdateMouse();

	if (inputEnter) {
	    MenuExecuteActions();
	}



}
