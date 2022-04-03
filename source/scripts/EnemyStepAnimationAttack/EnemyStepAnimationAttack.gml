/// @description EnemyStepAnimationAttack();
function EnemyStepAnimationAttack() {

	if movementEnabled  {
	    animFrameLegs += animSpeedMax * g.gameTimescale;
	}   else    {
	    animFrameLegs = 0;
	}

	//Increment Tick
	attackDurationTick = approach(attackDurationTick, attackDurationTickMax, g.gameTimescale);
	var _interpAmount = (attackDurationTick / attackDurationTickMax);
	var _animFrameCount = sprite_get_number(animSpriteAttack);

	//Rotate Towards Target
	if instance_exists(pathfindingTargetID) {
	    var _animAngleTarget = point_direction(x, y, pathfindingTargetID.x, pathfindingTargetID.y);
	    animAngle = rotate_toward(animAngle, _animAngleTarget, 20);
	}

	//Proper Animation
	switch (attackType) {
	    case "Melee":
	        animFrame = _animFrameCount * _interpAmount;
	        break;
        
	    case "Gun":
	        if weaponAnimated   {
	            animFrame += animSpeed * g.gameTimescale;
	        }   else    {
	            animFrame = approach(animFrame, _animFrameCount, animSpeedMax * g.gameTimescale);
	            if animFrame >= (_animFrameCount)   {
	                animSprite = weaponSpriteWalk;
	                weaponAnimated = true;
	            }
	        }   break;
	}

	//Finishing Attack
	if (_interpAmount >= 1)    {

	    //Reset State
	    stateCurrent = ESTATES.Walk;
	    attackDurationTick = 0;
	    animSpriteCurrent = animSpriteWalk;
    
	    //Mirror Melee Weapon
	    if attackMirror
	        animMeleeMirror = animMeleeMirror * -1;
            
	    //Reanimate Gun
	    weaponAnimated = false;
    
	}



}
