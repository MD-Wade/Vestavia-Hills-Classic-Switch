/// @description PlayerReturnCollision(x, y);
/// @param x
/// @param  y
function PlayerReturnCollision() {

	var _posX = argument[0];
	var _posY = argument[1];

	return
	    place_meeting(_posX, _posY, parSolid);



}
