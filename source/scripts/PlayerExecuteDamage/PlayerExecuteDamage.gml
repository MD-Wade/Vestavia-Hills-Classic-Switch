/// @description PlayerExecuteDamage(amount, direction, type, knockback);
/// @param amount
/// @param  direction
/// @param  type
/// @param  knockback
function PlayerExecuteDamage() {

	var _damageAmount = min(round(argument[0]), GameReturnActorStat("Health"));
	var _damageDirection = argument[1];
	var _damageType = argument[2];
	var _damageKnockback = argument[3];

	//Gore
	switch (_damageType)    {
	    case "NonLethal": GoreExecuteHurtNonLethal(_damageDirection + 180) break;
	    case "Blunt": GoreExecuteHurtBlunt(_damageDirection + 180); break;
	    case "Cut": GoreExecuteHurtCut(_damageDirection + 180); break;
	    case "Shotgun": GoreExecuteHurtBullet(_damageDirection + 180); break;
	    case "Rifle": GoreExecuteHurtBullet(_damageDirection + 180); break;
	}

	//Knockback
	movementVelocityX = lengthdir_x(_damageKnockback, _damageDirection);
	movementVelocityY = lengthdir_y(_damageKnockback, _damageDirection);

	//Damage
	GameExecuteActorStatSet("Health", GameReturnActorStat("Health") - _damageAmount);

	//Slowdown
	movementHurtFactor = 0;

	//Print
	print("Received Damage", _damageAmount, _damageDirection, _damageType, _damageKnockback);

	//Die?
	if (GameReturnActorStat("Health") <= 0)   {
	    PlayerExecuteDeath(_damageDirection, _damageType);
	    GameExecuteDamageNumberCreate(x, y, _damageAmount, 1);
	}   else    {
	    GameExecuteDamageNumberCreate(x, y, _damageAmount, 0);
	}



}
