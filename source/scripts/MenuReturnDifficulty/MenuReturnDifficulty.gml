/// @description MenuReturnDifficulty(index);
/// @param index
function MenuReturnDifficulty() {

	var _inDifficulty = argument[0];
	var _outReturn = "ERROR";

	switch (_inDifficulty)  {
	    case 0: _outReturn = "EASY"; break;
	    case 1: _outReturn = "INTERMEDIATE"; break;
	    case 2: _outReturn = "HARD"; break;
	    case 3: _outReturn = "NIGHTMARE"; break;
	}

	return _outReturn;



}
