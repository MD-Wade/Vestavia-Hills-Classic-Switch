/// @description EnemyExecuteDeath(direction, type);
/// @param direction
/// @param  type
function EnemyExecuteDeath() {

	var _damageDirection = argument[0];
	var _damageType = argument[1];
	var _damageKnockbackFactor = 2;

	//Spawn Gore
	if (g.settingGore)   {
	    switch (_damageType) {
	        case "Shotgun":
	            GoreExecuteKillBullet(_damageDirection);
	            switch (object_index)   {
	                case objEnemyStandard:
	                case objEnemyBehemoth:
	                    var _spriteDead = choose(sprEStandardDeadShotgunBack, sprEStandardDeadShotgunFront);
	                break;
	                case objEnemyRunner:
	                    var _spriteDead = choose(sprERunnerDeadShotgunBack, sprERunnerDeadShotgunFront);
	                break;
	            }   break;
    
	        case "Rifle":
	            GoreExecuteKillBullet(_damageDirection);
	            switch (object_index)   {
	                case objEnemyStandard:
	                case objEnemyBehemoth:
	                    var _spriteDead = choose(sprEStandardDeadRifleBack, sprEStandardDeadRifleFront);
	                break;
	                case objEnemyRunner:
	                    var _spriteDead = choose(sprERunnerDeadRifleBack, sprERunnerDeadRifleFront);
	                break;
	            }   break;
    
	        case "NonLethal":
	            GoreExecuteKillNonLethal(_damageDirection);
	            switch (object_index)   {
	                case objEnemyStandard:
	                case objEnemyBehemoth:
	                    var _spriteDead = sprEStandardDeadNonLethal;
	                break;
	                case objEnemyRunner:
	                    var _spriteDead = sprERunnerDeadNonLethal;
	                break;
	            }   break;
    
	        case "Blunt":
	            GoreExecuteKillBlunt(_damageDirection);
	            switch (object_index)   {
	                case objEnemyStandard:
	                case objEnemyBehemoth:
	                    var _spriteDead = choose(sprEStandardDeadBluntBack, sprEStandardDeadBluntFront);
	                break;
	                case objEnemyRunner:
	                    var _spriteDead = choose(sprERunnerDeadBluntBack, sprERunnerDeadBluntFront);
	                break;
	            }   break;
    
	        case "Cut":
	            GoreExecuteKillCut(_damageDirection);
	            switch (object_index)   {
	                case objEnemyStandard:
	                case objEnemyBehemoth:
	                    var _spriteDead = choose(sprEStandardDeadSharpBack);
	                break;
	                case objEnemyRunner:
	                    var _spriteDead = choose(choose(sprERunnerDeadSharpBack));
	                break;
	            }   break;
	    }
	}   else    {
	        var _spriteDead = sprEStandardDeadNonLethal;
	}

	//Initialize
	var _cashAmount = irandom_range(3, 4);
	var _cashValue = 10;

	//Achivements
	switch (object_index)   {
	    case objEnemyBehemoth:
	        GameExecuteAchievement(ACHIEVEMENTS.DAVID_AND_GOLIATH);
	    break;
	}

	//Spawn Cash
	switch (object_index)   {
	    case objEnemyBehemoth:
	        _cashValue = 10;
	        _cashAmount = irandom_range(44, 52);
	        break;
	}
	EnemyExecuteCashSpawn(_cashAmount, _damageDirection + 180, _cashValue);

	//Spawn Ammo
	if (chance(0.20))   {
	    EnemyExecuteAmmoSpawn(1, _damageDirection + 180);
	}

	//Assign Sprite and Frame
	animSpriteCurrent = _spriteDead;
	animFrame = irandom(sprite_get_number(animSpriteCurrent) - 1);
	animFrameLegs = 0;
	animAngle = _damageDirection;

	//Assign Velocity
	movementVelocityX = lengthdir_x(movementKnockback * _damageKnockbackFactor, _damageDirection);
	movementVelocityY = lengthdir_y(movementKnockback * _damageKnockbackFactor, _damageDirection);

	//Assign State
	stateCurrent = ESTATES.Dead;



}
