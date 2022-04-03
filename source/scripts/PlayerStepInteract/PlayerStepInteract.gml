/// @description PlayerStepInteract();
function PlayerStepInteract() {

	//Don't Update Animation When Timescale is 0
	if (g.gameTimescale <= 0)
	    exit;

	//Legs
	animSpeed = (movementSpeedFactor * animSpeedMax);
	if animSpeed > 0    {
	    animFrameLegs += animSpeed;
	}   else    {
	    animFrameLegs = 0;
	}

	//Main
	interactionTick = approach(interactionTick, interactionTickMax, g.gameTimescale);
	var _interpAmount = (interactionTick / interactionTickMax);
	animFrame = sprite_get_number(animSprite) * _interpAmount;

	if (_interpAmount >= 1)    {
	    animSprite = PlayerReturnSpriteWalk();
	    interactionTick = 0;
	    stateCurrent = PSTATES.Walk;
	}



}
