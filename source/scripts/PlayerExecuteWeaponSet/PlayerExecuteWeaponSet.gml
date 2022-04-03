/// @description PlayerExecuteWeaponSet(slot, weapon, [id], [ammo], [ammo_reserve]);
/// @param slot
/// @param  weapon
/// @param  [id]
/// @param  [ammo]
/// @param  [ammo_reserve]
function PlayerExecuteWeaponSet() {

	var _weaponSlot = argument[0];
	var _weaponIndex = argument[1];
	var _weaponAmmo = 1;
	var _weaponAmmoReserve = 1;
	var _instanceID = id;

	if (argument_count > 2)
	    var _instanceID = argument[2];
	if (argument_count > 3)
	    var _weaponAmmo = argument[3];
	if (argument_count > 4)
	    var _weaponAmmoReserve = argument[4];
    
    
	with (_instanceID)  {
	    weaponSelected = _weaponSlot;
	    weaponCurrent[_weaponSlot] = _weaponIndex;
	    weaponAmmo[_weaponSlot] = round(WeaponReturnStat("gunReloadClip") * _weaponAmmo);
	    weaponAmmoReserve[_weaponSlot] = round(WeaponReturnStat("gunReloadReserve") * _weaponAmmoReserve);
	    PlayerExecuteWeaponUpdate();
	}



}
