/// @description GameReturnActorStat(stat, [instance]);
/// @param stat
/// @param  [instance]
function GameReturnActorStat() {

	var _inStat = argument[0];
	if (argument_count > 1)
	    var _inInstance = argument[1];
	else
	    var _inInstance = id;

	with (_inInstance)  {
	    return mapStats[? _inStat];
	}



}
