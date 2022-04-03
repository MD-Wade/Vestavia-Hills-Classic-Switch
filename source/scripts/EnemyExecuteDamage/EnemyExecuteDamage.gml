/// @description EnemyExecuteDamage(amount, direction, type, knockback, [critical]);
/// @param amount
/// @param  direction
/// @param  type
/// @param  knockback
/// @param  [critical]
function EnemyExecuteDamage() {

	//End Movement
	path_end();

	var _damageAmount = min(round(argument[0]), statsHealth);
	var _damageDirection = argument[1];
	var _damageType = argument[2];
	var _damageKnockback = (argument[3] * (1 - statsResistanceKnockback));

	if (argument_count > 4)
	    var _damageCritical = argument[4];
	else
	    var _damageCritical = false;

	//Gore
	switch (_damageType)    {
	    case "NonLethal": GoreExecuteHurtNonLethal(_damageDirection + 180); break;
	    case "Blunt": GoreExecuteHurtBlunt(_damageDirection + 180); g.flagNonlethal = false; break;
	    case "Cut": GoreExecuteHurtCut(_damageDirection + 180); g.flagNonlethal = false; break;
	    case "Shotgun": GoreExecuteHurtBullet(_damageDirection + 180); g.flagNonlethal = false; break;
	    case "Rifle": GoreExecuteHurtBullet(_damageDirection + 180); g.flagNonlethal = false; break;
	}

	//Knockback
	movementVelocityX = lengthdir_x(_damageKnockback, _damageDirection);
	movementVelocityY = lengthdir_y(_damageKnockback, _damageDirection);

	//Damage
	statsHealth = max(statsHealth - _damageAmount, 0);

	//Flash
	damageFlash = damageFlashAmount;

	//Set Parameters
	if stateCurrent != ESTATES.enterWindow  {
	    stateCurrent = ESTATES.Knockback;
	    animSpriteCurrent = animSpriteDamaged;
	    animFrame = 0;
	    attackDurationTick = 0;
	}

	//Determine Damage Number Type
	if (_damageCritical)    {
	    var _damageNumberType = 3;
	}   else    {
	    if (statsHealth <= 0)
	        var _damageNumberType = 1;
	    else
	        var _damageNumberType = 0;
	}

	//Print
	print("Received Damage", _damageAmount, _damageDirection, _damageType, _damageKnockback);

	//Die or Retarget
	if (statsHealth <= 0)
	    EnemyExecuteDeath(_damageDirection, _damageType);

	GameExecuteDamageNumberCreate(x, y, _damageAmount, _damageNumberType);



}
