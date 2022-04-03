/// @description EnemyStepPathfinding();
function EnemyStepPathfinding() {

	//Update Path
	var _pathSuccess = EnemyExecutePathUpdate();

	//Pathfinding
	if _pathSuccess and instance_exists(pathfindingTargetID) {
	    var _pathPointCount, _pathPointX, _pathPointY, _animAngleTarget;

	    switch (pathfindingTargetID.object_index)   {
	        case objPlayer:
	            var _isUnobstructed = !collision_line(x, y, pathfindingTargetID.x, pathfindingTargetID.y, parWall, true, -1);
	            if _isUnobstructed  {
	                var _rotateX = pathfindingTargetID.x;
	                var _rotateY = pathfindingTargetID.y;
	            }   else    {
	                var _rotateX = path_get_point_x(pathfindingIndex, 1) - 4;
	                var _rotateY = path_get_point_y(pathfindingIndex, 1) - 4;
	            }
	        break;
        
	        case objBrokenWindow:
	            with (pathfindingTargetID)  {
	                var _rotateX = center_x();
	                var _rotateY = center_y();
	            }
	        break;
        
	        default:
	            print("Unidentified Pathfinding Target", object_get_name(pathfindingTargetID));
	        break;
	    }
    
	    _animAngleTarget = point_direction(x, y, _rotateX, _rotateY);
	    animAngle = rotate_toward(animAngle, _animAngleTarget, 20);
	    movementEnabled = true;
	    path_start(pathfindingIndex, movementSpeed * g.gameTimescale, path_action_stop, false);
	}   else    {
	    movementEnabled = false;
	    path_end();
	}



}
