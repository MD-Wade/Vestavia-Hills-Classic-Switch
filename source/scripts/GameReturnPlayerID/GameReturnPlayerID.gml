/// @description GameReturnPlayerID(index)
/// @param index
function GameReturnPlayerID() {

	var _inIndex = argument[0];

	with (objGame)  {
	    return gamePlayerInstances[_inIndex];
	}



}
