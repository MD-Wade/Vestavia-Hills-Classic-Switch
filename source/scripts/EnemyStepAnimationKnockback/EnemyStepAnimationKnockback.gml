/// @description EnemyStepAnimationKnockback();
function EnemyStepAnimationKnockback() {

	if movementEnabled  {
	    animFrameLegs += animSpeedMax * 1.2 * g.gameTimescale;
	}   else    {
	    animFrameLegs = 0;
	}

	animFrame += animSpeedMax * 1.7 * g.gameTimescale;



}
