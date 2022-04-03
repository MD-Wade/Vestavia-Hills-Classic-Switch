/// @description PlayerStepInteractionTarget();
function PlayerStepInteractTarget() {

	//Clear List Range
	interactionInstance = noone;
	ds_list_clear(interactionRangeList);

	//Iterate Through List
	for (var i = 0; i < ds_list_size(g.listInteractables); i ++)    {
	    var _interactionObject = g.listInteractables[| i];
    
	    with (_interactionObject)   {
	        var _interactionDistance = point_distance(x, y, other.x, other.y);
	        if (_interactionDistance < (other.interactionThresholdDistance))  {
	            ds_list_add(other.interactionRangeList, id);
	        }
	    }
	}

	//Iterate Again, Find Potential Index
	for (var i = 0; i < ds_list_size(interactionRangeList); i ++)    {
	    var _interactionInstance = interactionRangeList[| i];
	    with (_interactionInstance) {
	        var _interactionCenterX = center_x();
	        var _interactionCenterY = center_y();
	    }

	    var _interactionAngleDifference = abs(angle_difference(animAngle, point_direction(x, y, _interactionCenterX, _interactionCenterY)));
    
	    if (_interactionAngleDifference <= interactionThresholdAngle)   {
	        if (interactionInstance != noone)   {
	            if (point_distance(x, y, interactionInstance.x, interactionInstance.y) < (point_distance(x, y, _interactionInstance.x, _interactionInstance.y))) {
	                interactionInstance = _interactionInstance;
	            }
	        }   else    {
	            interactionInstance = _interactionInstance;
	        }
	    }
	}

	//Set Message
	if (interactionInstance != noone)   {
	    guiMessageString = InteractableReturnMessage(interactionInstance);
	    var _guiMessageAlphaTarget = 1;
	}   else    {
	    var _guiMessageAlphaTarget = 0;
	}
	guiMessageAlpha = approach(guiMessageAlpha, _guiMessageAlphaTarget, 0.1);



}
