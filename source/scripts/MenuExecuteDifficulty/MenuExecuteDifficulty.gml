/// @description MenuExecuteDifficulty(delta);
/// @param delta
function MenuExecuteDifficulty() {

	var _inDelta = argument[0];

	g.gameDifficulty = wrap(g.gameDifficulty + _inDelta, 0, 4);
	menuArray[MENU_TYPES.PLAY, 1] = "DIFFICULTY: " + MenuReturnDifficulty(g.gameDifficulty);



}
