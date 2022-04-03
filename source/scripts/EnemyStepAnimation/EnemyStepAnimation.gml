/// @description EnemyStepAnimation();
function EnemyStepAnimation() {

	if movementEnabled  {
	    animFrame += animSpeedMax * g.gameTimescale;
	    animFrameLegs += animSpeedMax * g.gameTimescale;
	}   else    {
	    animFrame = 0;
	    animFrameLegs = 0;
	}



}
