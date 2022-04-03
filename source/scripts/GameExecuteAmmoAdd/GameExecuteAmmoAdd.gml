/// @description GameExecuteAmmoAdd(id, value);
/// @param id
/// @param  value
function GameExecuteAmmoAdd() {

	var _inID = argument[0];
	var _inAmmo = argument[1];

	with (_inID)  {
	    weaponAmmoReserve[weaponSelected] = approach(weaponAmmoReserve[weaponSelected], WeaponReturnStat("gunReloadReserve"), _inAmmo);
	}



}
