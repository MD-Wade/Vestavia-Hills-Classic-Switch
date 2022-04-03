/// @description GameExecuteDebris(direction, count, sprite, [x], [y]);
/// @param direction
/// @param  count
/// @param  sprite
/// @param  [x]
/// @param  [y]
function GameExecuteDebris() {

	var _debrisDirection = argument[0];
	var _debrisCount = argument[1];
	var _debrisSprite = argument[2];

	if (argument_count > 3) {
	    var _posX = argument[3];
	    var _posY = argument[4];
	}   else    {
	    var _posX = center_x();
	    var _posY = center_y();
	}

	var _debrisDirectionVariation = 15;
	repeat (_debrisCount)   {
	    var _instanceDirection = (_debrisDirection + rr(_debrisDirectionVariation * -1, _debrisDirectionVariation));
	    var _posXInstance = _posX + lengthdir_x(2, _instanceDirection)
	    var _posYInstance = _posY + lengthdir_y(2, _instanceDirection);
    
	    var _debrisID = instance_create(_posX, _posY, objDebris);
	    _debrisID.sprite_index = _debrisSprite;
	    _debrisID.direction = _instanceDirection;
	}



}
