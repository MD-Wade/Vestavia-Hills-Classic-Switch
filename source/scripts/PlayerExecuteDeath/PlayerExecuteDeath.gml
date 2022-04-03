/// @description PlayerExecuteDeath(direction, type);
/// @param direction
/// @param  type
function PlayerExecuteDeath() {

	var _damageDirection = argument[0];
	var _damageType = argument[1];
	var _damageKnockbackFactor = 2;

	//Spawn Gore
	if (g.settingGore)   {
	    switch (_damageType) {
	        case "NonLethal":
	            GoreExecuteKillNonLethal(_damageDirection);
	            var _spriteDead = sprPlayerDeadNonLethal;
	            break;
    
	        case "Blunt":
	            GoreExecuteKillBlunt(_damageDirection);
	            var _spriteDead = choose(sprPlayerDeadBluntBack, sprPlayerDeadBluntFront);
	            break;
    
	        case "Cut":
	            GoreExecuteKillCut(_damageDirection);
	            var _spriteDead = choose(sprPlayerDeadSharpBack);
	            break;
            
	        case "Shotgun":
	            GoreExecuteKillBullet(_damageDirection);
	            var _spriteDead = choose(sprPlayerDeadShotgunBack, sprPlayerDeadShotgunFront);
	            break;
    
	        case "Rifle":
	            GoreExecuteKillBullet(_damageDirection);
	            var _spriteDead = choose(sprPlayerDeadRifleBack, sprPlayerDeadRifleFront);
	            break;
	    }
	}   else
	        var _spriteDead = sprPlayerDeadNonLethal;

	//Assign Sprite and Frame
	animSprite = _spriteDead;
	animFrame = irandom(sprite_get_number(animSprite) - 1);
	animFrameLegs = 0;
	animAngle = _damageDirection;

	//Single Player Specific
	if (g.settingPlayerCount <= 1)  {
	    audio_stop_all();
	    sound_here(sndMeleeBlunt1, 256, false, 0.6);
	    GameExecuteSlowdown(0.5, 2, 0);
	    cameraWidth = cameraWidthBase * 0.5;
	    cameraZoomSpeed = 0.001;
	    GameExecuteAchievementScore();
	}

	//Assign Velocity
	movementVelocityX = lengthdir_x(movementKnockback * _damageKnockbackFactor, _damageDirection);
	movementVelocityY = lengthdir_y(movementKnockback * _damageKnockbackFactor, _damageDirection);

	//Assign State
	stateCurrent = PSTATES.Dead;



}
