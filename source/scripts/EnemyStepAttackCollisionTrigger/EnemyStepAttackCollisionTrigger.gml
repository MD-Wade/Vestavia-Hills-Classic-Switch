/// @description EnemyStepAttackCollisionTrigger();
function EnemyStepAttackCollisionTrigger() {

	var _attackTrigger = false;
	var _attackCollisionX = attackCollisionX;
	var _attackCollisionY = attackCollisionY;
	var _weaponHurtType = attackHurtType;
	var _withinFrames = (animFrame >= attackFrameMin) and (animFrame <= attackFrameMax);
	var _withinCollision = distance_to_object(pathfindingTargetID) < attackRange;
	var _isStanding, _isUnobscured;

	if _withinFrames and !attackTargetHit    {
	    with (pathfindingTargetID) {
	        switch (object_index)   {
	            case objPlayer:
	                _isUp = PlayerReturnStanding(stateCurrent);
	                _isUnobscured = !collision_line(x, y, other.x, other.y, parWall, true, -1);
                
	                //Pass Checks
	                if _withinCollision
	                    if _isUp
	                        if _isUnobscured
	                            _attackTrigger = true;
	            break;
            
	            default:
	                if _withinCollision
	                    _attackTrigger = true;
	            break;
	        }
	    }
	}

	//Hurt if Applicable
	if _attackTrigger   {
	    switch (pathfindingTargetID.object_index)   {
	        case objPlayer:
	            with (pathfindingTargetID)
	                PlayerExecuteCameraShakeAdd(other.attackShake);       
	            EnemyExecuteAttack(pathfindingTargetID);
	            attackTargetHit = true;
	        break;
        
	        case objBrokenWindow:
	            EnemyExecuteAttack(pathfindingTargetID);
	            attackTargetHit = true;
	        break;
	    }
	}



}
