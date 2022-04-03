/// @description EnemyStepPhysics();
function EnemyStepPhysics() {

	//Scale for Big Collisions
	ActorExecuteScaleDouble();

	//Initialize Variables
	var _movementDirection = point_direction(0, 0, movementVelocityX, movementVelocityY);
	var _movementVelocityWorkingX = lengthdir_x(abs(movementVelocityX), _movementDirection) * g.gameTimescale;
	var _movementVelocityWorkingY = lengthdir_y(abs(movementVelocityY), _movementDirection) * g.gameTimescale;
	var _xCheck = x + _movementVelocityWorkingX;
	var _yCheck = y + _movementVelocityWorkingY;
	var _checkPerformed = false;

	//If our target spot is free, move there. Otherwise, do angle sweeps until we have found a good spot
	if !place_meeting(_xCheck, _yCheck, parSolid)   {
	    x = _xCheck;
	    y = _yCheck;
	}   else for (var _checkAngle = movementSweepInterval; _checkAngle <= 85; _checkAngle += movementSweepInterval)   {
	        for (var _checkMultiplier = -1; _checkMultiplier <= 1; _checkMultiplier += 2)   {
	            var _movementAngleCheck = _movementDirection + (_checkAngle * _checkMultiplier);
	            var _movementVelocityWorkingX = (lengthdir_x(abs(movementVelocityX) * movementAngleFactor, _movementAngleCheck) * g.gameTimescale);
	            var _movementVelocityWorkingY = (lengthdir_y(abs(movementVelocityY) * movementAngleFactor, _movementAngleCheck) * g.gameTimescale);
	            var _xCheck = x + _movementVelocityWorkingX;
	            var _yCheck = y + _movementVelocityWorkingY;
            
	            if !place_meeting(_xCheck, _yCheck, parSolid)   {
	                _checkPerformed = true;
	                x = _xCheck;
	                y = _yCheck;
	                var _collisionPass = true;
	                break;
	            }
	        }
        
	        if _checkPerformed  {
	            break;
	        }
	}

	//Friction
	movementVelocityX = approach(movementVelocityX, 0, movementFriction * g.gameTimescale);
	movementVelocityY = approach(movementVelocityY, 0, movementFriction * g.gameTimescale);

	//Rescale
	ActorExecuteScaleHalf();



}
