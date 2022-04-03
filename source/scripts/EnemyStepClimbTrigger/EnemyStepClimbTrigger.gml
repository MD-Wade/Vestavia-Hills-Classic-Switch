/// @description EnemyStepClimbTrigger();
function EnemyStepClimbTrigger() {

	if !climbCheck   {
	    var _idWindow = collision_circle(x, y, climbCollisionRadius, objBrokenWindow, false, -1);
	    if instance_exists(_idWindow)   {
	        if (_idWindow.windowBarricaded) {
	        }   else    {
	            EnemyExecuteClimbBegin(_idWindow);
	        }
	    }
	}



}
