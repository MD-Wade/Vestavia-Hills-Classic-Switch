/// @description PlayerStepBarricading();
function PlayerStepBarricading() {

	var _calcEnd = false;
	var _calcBarricadeProgress = 0;

	//Interaction
	if inputInteractHold {
	    with (barricadeInstance)    {
	        barricadeProgress = approach(barricadeProgress, barricadeProgressMax, 1);
	        _calcBarricadeProgress = (barricadeProgress / barricadeProgressMax) * 100;
	        if (barricadeProgress >= barricadeProgressMax)  {
	            windowHealth = windowHealthBase;
	            barricadeProgress = 0;
	            _calcEnd = true;
	        }
	    }
	}   else    {
	    _calcEnd = true;
	}

	//Cancel if Too Far
	if (distance_to_object(barricadeInstance) > interactionThresholdDistance)    {
	    _calcEnd = true;
	}

	//Update
	barricadeProgress = _calcBarricadeProgress;

	//Animate
	animFrame = approach(animFrame, sprite_get_number(animSprite) - 1, animSpeedMax * g.gameTimescale);
	animFrameLegs = 0;

	//End
	if _calcEnd {
	    stateCurrent = PSTATES.Walk;
	    animSprite = PlayerReturnSpriteWalk();
	}



}
