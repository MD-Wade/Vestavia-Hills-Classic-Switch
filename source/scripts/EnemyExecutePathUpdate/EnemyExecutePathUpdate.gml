/// @description EnemyExecutePathUpdate();
function EnemyExecutePathUpdate() {

	var _pathSuccess, _pathTargetX, _pathTargetY, _pathExecute;

	//On by Default
	_pathExecute = true;

	//Object Based Targeting
	if instance_exists(pathfindingTargetID) {

	    //Center
	    with (pathfindingTargetID)  {
	        _pathTargetX = center_x();
	        _pathTargetY = center_y();
	    }

	    switch (pathfindingTargetID.object_index)   {
	        case objBrokenWindow:
	            _pathTargetX = pathfindingTargetID.targetX;
	            _pathTargetY = pathfindingTargetID.targetY;
	            break;
    
	        case objPlayer:
	            //Cancel if Close
	            if (distance_to_point(_pathTargetX, _pathTargetY) < (attackRange * 0.75))
	                _pathExecute = false;
	            break;
	    }
	}   else    {
	    _pathTarget = x;
	    _pathTarget = y;
	    _pathExecute = false;
	}

	//Calculate Path
	if (_pathExecute)   {
	    _pathSuccess = mp_grid_path(global.pathfindingGrid, pathfindingIndex, x, y, _pathTargetX, _pathTargetY, true);
	    if !_pathSuccess {
	        repeat(32)  {
	            _pathTargetX += irandom_range(-2, 2);
	            _pathTargetY += irandom_range(-2, 2);
	            _pathSuccess = mp_grid_path(global.pathfindingGrid, pathfindingIndex, x, y, _pathTargetX, _pathTargetY, true);
            
	            if _pathSuccess
	                break;
	        }
	    }
	}   else    {
	    _pathSuccess = false;
	}

	//Return Success
	return _pathSuccess;



}
