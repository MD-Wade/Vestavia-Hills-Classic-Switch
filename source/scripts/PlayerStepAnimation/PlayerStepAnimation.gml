/// @description PlayerStepUpdateAnimation();
function PlayerStepAnimation() {

	//Don't Update Animation When Timescale is 0
	if (g.gameTimescale <= 0)
	    exit;

	animSpeed = (movementSpeedFactor * animSpeedMax);

	if animSpeed > 0    {
	    animFrame += animSpeed;
	    animFrameLegs += animSpeed;
	}   else    {
	    animFrame = 0;
	    animFrameLegs = 0;
	}



}
