/// @description EditorReturnWallCollision(x, y)
/// @param x
/// @param  y
function EditorReturnWallCollision() {

	var _inX = argument[0];
	var _inY = argument[1];
	var _checkX = _inX div dsGridWallsCellSize;
	var _checkY = _inX div dsGridWallsCellSize;

	return (dsGridWalls[# _checkX, _checkY] == -1);



}
