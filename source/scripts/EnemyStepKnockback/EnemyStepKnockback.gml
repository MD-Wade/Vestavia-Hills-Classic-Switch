/// @description EnemyStepKnockback();
function EnemyStepKnockback() {

	//Knockback
	knockbackTick = approach(knockbackTick, knockbackTickMax, g.gameTimescale);

	//Reset
	if (abs(movementVelocityX) <= 0)    {
	    if (abs(movementVelocityY) <= 0)    {
	        if (knockbackTick >= knockbackTickMax)  {
	            stateCurrent = ESTATES.Walk;
	            animSpriteCurrent = animSpriteWalk;
	            knockbackTick = 0;
	            attackTick = 0;
            
	            //Resume Climbing
	            if !climbCheck  {
	                pathfindingTargetID = EnemyReturnTargetFind();
	                EnemyExecutePathUpdate();
	            }
	        }
	    }
	}



}
