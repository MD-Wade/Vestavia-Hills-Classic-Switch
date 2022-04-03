/// @description WeaponReturnStat(stat, [weapon]);
/// @param stat
/// @param  [weapon]
function WeaponReturnStat() {

	var _inStat = argument[0];
	if (argument_count > 1)
	    var _inWeapon = argument[1];
	else
	    var _inWeapon = weaponCurrent[weaponSelected];

	var _mapIndex = g.mapWeapons[? _inWeapon];
	var _mapReturn = _mapIndex[? _inStat];

	return _mapReturn;



}
