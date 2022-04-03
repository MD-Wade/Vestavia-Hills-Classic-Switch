/// @description EnemyExecuteAmmoSpawn(amount, direction);
/// @param amount
/// @param  direction
function EnemyExecuteAmmoSpawn() {

	var _inAmount = argument[0];
	var _inDirection = argument[1];
	var _ammoSpeed = 4 * g.gameTimescale;

	repeat (_inAmount)  {
	    var _ammoDirection = (_inDirection + irandom_range(-45, 45));
	    var _ammoX = x;
	    var _ammoY = y;
	    var _ammoID = instance_create(_ammoX, _ammoY, objAmmo);
    
	    _ammoID.movementVelocityX = lengthdir_x(_ammoSpeed, _ammoDirection);
	    _ammoID.movementVelocityY = lengthdir_y(_ammoSpeed, _ammoDirection);
	}



}
