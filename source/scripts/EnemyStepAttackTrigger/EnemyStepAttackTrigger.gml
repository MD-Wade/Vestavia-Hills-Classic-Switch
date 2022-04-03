/// @description EnemyStepAttackTrigger();
function EnemyStepAttackTrigger() {

	if instance_exists(pathfindingTargetID) {
	    switch (pathfindingTargetID.object_index)    {
	        case objPlayer:
	            var _calcInRange = distance_to_object(pathfindingTargetID) < attackRange;
	            var _calcIsUnobstructed = !collision_line(x, y, pathfindingTargetID.x, pathfindingTargetID.y, parWall, true, -1)
	            if (_calcInRange and _calcIsUnobstructed)   {
	                attackTriggerTick = approach(attackTriggerTick, attackTriggerTickMax, g.gameTimescale);
	                if (attackTriggerTick >= attackTriggerTickMax)  {
	                    EnemyExecuteAttackBegin();
	                    attackTriggerTick = 0;
	                }
	            }
	        break;

	        case objBrokenWindow:
	            var _calcInRange = distance_to_object(pathfindingTargetID) < attackRange;
	            if (_calcInRange)   {
	                attackTriggerTick = approach(attackTriggerTick, attackTriggerTickMax, g.gameTimescale);
	                if (attackTriggerTick >= attackTriggerTickMax)  {
	                    EnemyExecuteAttackBegin();
	                    attackTriggerTick = 0;
	                }
	            }
	        break;
	    }
	}



}
