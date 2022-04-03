/// @description PlayerExecuteWeaponStatSet(stat, value, [id]);
/// @param stat
/// @param  value
/// @param  [id]
function PlayerExecuteWeaponStatSet() {

	var _inStat = argument[0];
	var _inValue = argument[1];
	if (argument_count > 2)
	    var _inInstance = argument[2];
	else
	    var _inInstance = id;

	with (_inInstance)  {
	    mapWeaponStats[? _inStat] = _inValue;
	    print("wrote", _inStat, _inValue);
	}



}
