/// @description GameExecuteDamageNumberCreate(x, y, amount, type);
/// @param x
/// @param  y
/// @param  amount
/// @param  type
function GameExecuteDamageNumberCreate() {

	var _offsetX = irandom_range(-4, 4);
	var _offsetY = irandom_range(-4, 4) - 24;

	var _instanceX = argument[0] + _offsetX;
	var _instanceY = argument[1] + _offsetY;
	var _instanceAmount = argument[2];
	var _instanceType = argument[3];

	if (g.settingDamageNumbers) {
	    with (instance_create(_instanceX, _instanceY, objDamageNumber)) {
	        drawString = string(round(_instanceAmount));
	        numberType = _instanceType;
	    }
	}



}
