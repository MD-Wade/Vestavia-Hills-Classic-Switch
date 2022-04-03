/// @description GameExecuteActorStatAdd(stat, value, [id]);
/// @param stat
/// @param  value
/// @param  [id]
function GameExecuteActorStatAdd() {

	var _inStat = argument[0];
	var _inValue = argument[1];
	if (argument_count > 2)
	    var _inInstance = argument[2];
	else
	    var _inInstance = id;

	with (_inInstance)  {
	    mapStats[? _inStat] += _inValue;
	}



}
