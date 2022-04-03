/// @description PlayerStepUpdateMovement();
function PlayerStepMovement() {

	PlayerStepMovementCalculations();

	//Acceleration and Deceleration
	if movementMoving   {
	    var _movementVelocityXTarget = movementSpeedTotal * movementDirectionX;
	    var _movementVelocityYTarget = movementSpeedTotal * movementDirectionY;
	    movementVelocityX = approach(movementVelocityX, _movementVelocityXTarget, movementAcceleration);
	    movementVelocityY = approach(movementVelocityY, _movementVelocityYTarget, movementAcceleration);
	}   else    {
	    var _movementVelocityXTarget = 0;
	    var _movementVelocityYTarget = 0;
	    movementVelocityX = approach(movementVelocityX, _movementVelocityXTarget, movementFriction);
	    movementVelocityY = approach(movementVelocityY, _movementVelocityYTarget, movementFriction);
	}

	var _movementDirection = point_direction(0, 0, movementVelocityX, movementVelocityY);
	var _movementVelocityWorkingX = lengthdir_x(abs(movementVelocityX), _movementDirection) * g.gameTimescale;
	var _movementVelocityWorkingY = lengthdir_y(abs(movementVelocityY), _movementDirection) * g.gameTimescale;

	var _xCheck = x + _movementVelocityWorkingX;
	var _yCheck = y + _movementVelocityWorkingY;
	var _collisionPass = false;
	var _checkPerformed = false;

	//If our target spot is free, move there. Otherwise, do angle sweeps until we have found a good spot
	if !PlayerReturnCollision(_xCheck, _yCheck)   {
	    x = _xCheck;
	    y = _yCheck;
	    inputMouseX += _movementVelocityWorkingX;
	    inputMouseY += _movementVelocityWorkingY;
	}   else for (var _checkAngle = movementSweepInterval; _checkAngle <= 95; _checkAngle += movementSweepInterval)   {
	        for (var _checkMultiplier = -1; _checkMultiplier <= 1; _checkMultiplier += 2)   {
	            var _movementAngleCheck = _movementDirection + (_checkAngle * _checkMultiplier);
	            var _movementVelocityWorkingX = (lengthdir_x(abs(movementVelocityX) * movementAngleFactor, _movementAngleCheck) * g.gameTimescale);
	            var _movementVelocityWorkingY = (lengthdir_y(abs(movementVelocityY) * movementAngleFactor, _movementAngleCheck) * g.gameTimescale);
	            var _xCheck = x + _movementVelocityWorkingX;
	            var _yCheck = y + _movementVelocityWorkingY;
            
	            if !PlayerReturnCollision(_xCheck, _yCheck)   {
	                _checkPerformed = true;
	                x = _xCheck;
	                y = _yCheck;
	                inputMouseX += _movementVelocityWorkingX;
	                inputMouseY += _movementVelocityWorkingY;
	                var _collisionPass = true;
	                break;
	            }
	        }
        
	        if _checkPerformed  {
	            break;
	        }
	}

	//Getting variables ready for later
	movementSpeedFactor = clamp((abs(x - xprevious) + abs(y - yprevious)) / movementSpeed, 0, 1);
	animAngleLegs = point_direction(0, 0, movementVelocityX, movementVelocityY);

	//Revert Slowdown
	movementHurtFactor = approach(movementHurtFactor, 1, movementHurtSpeed);



}
