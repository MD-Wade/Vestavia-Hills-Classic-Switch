/// @description EnemyStepDeathBake();
function EnemyStepDeathBake() {

	var _calcVelocityTotal = (abs(movementVelocityX) + abs(movementVelocityY));

	if (_calcVelocityTotal <= 0)    {
	    if movementTimer <= 0   {
	        EnemyExecuteBake();
	    }   else    {
	        movementTimer = max(movementTimer - 1, 0);
	    }
	}



}
