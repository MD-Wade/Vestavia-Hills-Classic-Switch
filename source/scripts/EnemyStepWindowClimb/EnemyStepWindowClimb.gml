/// @description EnemyStepWindowClimb();
function EnemyStepWindowClimb() {

	if (climbTick < climbTickMax)    {
	    climbTick = approach(climbTick, climbTickMax, g.gameTimescale);
	}   else    {
	    climbTick = 0;
	    stateCurrent = ESTATES.Walk;
	    animSpriteCurrent = animSpriteWalk;
	    x = windowToX;
	    y = windowToY;
	    pathfindingTargetID = EnemyReturnTargetFind();
	}

	animFrameLegs = 0;
	animFrame = lerp(0, climbFrameCount - 1, (climbTick / climbTickMax));



}
