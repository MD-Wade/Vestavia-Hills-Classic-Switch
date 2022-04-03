/// @description GameExecuteWeaponCreate(x, y, type, [velocity], [direction], [ammo_clip], [ammo_reserve]);
/// @param x
/// @param  y
/// @param  type
/// @param  [velocity]
/// @param  [direction]
/// @param  [ammo_clip]
/// @param  [ammo_reserve]
function GameExecuteWeaponCreate() {

	var _inX = argument[0];
	var _inY = argument[1];
	var _inType = argument[2];
	var _inVelocity = 0;
	var _inDirection = irandom(360);
	var _inAmmoClip = 0;
	var _inAmmoReserve = 0;

	if (argument_count > 3)
	    _inVelocity = argument[3];
	if (argument_count > 4)
	    _inDirection = argument[4];
	if (argument_count > 5)
	    _inAmmoClip = argument[5];
	if (argument_count > 6)
	    _inAmmoReserve = argument[6];

	with (instance_create(_inX, _inY, objWeapon))   {
	    weaponVelocityX = lengthdir_x(_inVelocity, _inDirection);
	    weaponVelocityY = lengthdir_y(_inVelocity, _inDirection);
	    weaponAmmoClip = _inAmmoClip;
	    weaponAmmoReserve = _inAmmoReserve;
	    weaponIndex = _inType;
    
	    image_index = WeaponReturnFrame(weaponIndex);
	}



}
