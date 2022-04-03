/// @description PlayerStepInteractBlank();
function PlayerStepInteractBlank() {

	//Clear List Range
	interactionInstance = noone;
	ds_list_clear(interactionRangeList);

	//Set Message
	if (interactionInstance != noone)   {
	    guiMessageString = interactionInstance.interactionMessage;
	    var _guiMessageAlphaTarget = 1;
	}   else    {
	    var _guiMessageAlphaTarget = 0;
	}
	guiMessageAlpha = approach(guiMessageAlpha, _guiMessageAlphaTarget, 0.1);



}
