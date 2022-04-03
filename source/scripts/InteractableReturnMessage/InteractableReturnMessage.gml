/// @description InteractableReturnMessage(id, [userid]);
/// @param id
/// @param  [userid]
function InteractableReturnMessage() {

	var _inInstance, _inUser, _outputString;
	_inInstance = argument[0];
	if argument_count > 1
	    _inUser = argument[1];
	else
	    _inUser = id;
    
	//Determine Type
	with (_inInstance)  {
	    switch (object_index) {
	        case objMysteryBox:
	            switch (stateCurrent)   {
	                case MYSTERY_STATES.Normal:
	                    _outputString = "[ZL] [$" + string(MysteryReturnCost(_inUser)) +  + "] FOR A RANDOM WEAPON";
	                break;
                
	                case MYSTERY_STATES.Opening:
	                    _outputString = "LUCK BE A LADY TONIGHT";
	                break;
                
	                case MYSTERY_STATES.Item:
	                    _outputString = "[ZL] COLLECT WEAPON";
	                break;
	            }
	        break;
        
	        case objWeapon:
	            _outputString = "[ZL] PICKUP " + string_upper(_inInstance.weaponIndex);
	        break;
        
	        default:
	            _outputString = interactionMessage;
	        break;
	    }
	}

	return _outputString;



}
