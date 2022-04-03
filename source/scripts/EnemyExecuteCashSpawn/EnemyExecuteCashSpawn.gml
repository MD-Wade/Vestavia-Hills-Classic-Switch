/// @description EnemyExecuteCashSpawn(amount, direction, value);
/// @param amount
/// @param  direction
/// @param  value
function EnemyExecuteCashSpawn() {

	var _inAmount = argument[0];
	var _inDirection = argument[1];
	var _inValue = argument[2];
	var _cashSpeed = rr(2, 4) * g.gameTimescale;

	repeat (_inAmount)  {
	    var _cashDirection = (_inDirection + irandom_range(-45, 45));
	    var _cashValue = max(round_n(_inValue * rr(0.25, 3), 5), 5);
	    var _cashX = x;
	    var _cashY = y;
	    var _cashID = instance_create(_cashX, _cashY, objCash);
    
	    _cashID.movementVelocityX = lengthdir_x(_cashSpeed, _cashDirection);
	    _cashID.movementVelocityY = lengthdir_y(_cashSpeed, _cashDirection);
	    _cashID.cashValue = _cashValue;
	}



}
