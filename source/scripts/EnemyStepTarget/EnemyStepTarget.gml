/// @description EnemyStepTarget();
function EnemyStepTarget() {

	if instance_exists(pathfindingTargetID) {
	    switch (pathfindingTargetID.object_index)   {
	        case objPlayer:
	            var _targetEligible = true;
	            with (pathfindingTargetID)  {
	                if !PlayerReturnAttackable()    {
	                    _targetEligible = false;
	                }
	            }

	            if !_targetEligible {
	                pathfindingTargetID = EnemyReturnTargetFind();
	            }
	            break;
	    }
	}   else    {
	    pathfindingTargetID = EnemyReturnTargetFind();
	}

	//No Valid Target
	if pathfindingTargetID == noone
	    stateCurrent = ESTATES.Idle;



}
