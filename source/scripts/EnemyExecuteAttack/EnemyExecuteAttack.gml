/// @description EnemyExecuteAttack(id);
/// @param id
function EnemyExecuteAttack() {

	var _targetID = argument[0];
	var _damageAmount = round(attackDamage * statsDamage);
	var _damageDirection = point_direction(x, y, _targetID.x, _targetID.y);
	var _damageType = attackHurtType;
	var _damageKnockback = attackKnockback;

	//Determine Type
	switch (_targetID.object_index) {
	    case objPlayer:
	        with (_targetID)    {
	            PlayerExecuteDamage(_damageAmount, _damageDirection, _damageType, _damageKnockback);
	        }
	    break;
    
	    case objBrokenWindow:
	        with (_targetID)    {
	            windowHealth = approach(windowHealth, 0, _damageAmount);
	            sound_here(sndBarricadeHit, 192, false, rr(0.96, 1.0));
	        }
	    break;
	}

	//Set State
	stateCurrent = ESTATES.Attack;



}
