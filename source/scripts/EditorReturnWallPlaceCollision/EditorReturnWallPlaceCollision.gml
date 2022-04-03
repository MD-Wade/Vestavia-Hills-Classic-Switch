/// @description EditorReturnWallPlaceCollision();
function EditorReturnWallPlaceCollision() {

	if (editorWall_x2 < editorWall_x1)  {
	    var _x2Save = editorWall_x2;
	    editorWall_x2 = editorWall_x1;
	    editorWall_x1 = _x2Save;
	}

	if (editorWall_y2 < editorWall_y1)  {
	    var _y2Save = editorWall_y2;
	    editorWall_y2 = editorWall_y1;
	    editorWall_y1 = _y2Save;
	}

	for (var xx = editorWall_x1; xx < editorWall_x2; xx += dsGridWallsCellSize) {
	    var _posX = (xx div dsGridWallsCellSize);
	    var _posY1 = (editorWall_y1 div dsGridWallsCellSize);
	    var _posY2 = (editorWall_y2 div dsGridWallsCellSize);
	    if dsGridWalls[# _posX, _posY1] != -1 return true;
	    if dsGridWalls[# _posX, _posY2] != -1 return true;
	}

	for (var yy = (editorWall_y1 + dsGridWallsCellSize); yy < (editorWall_y2 + dsGridWallsCellSize); yy += dsGridWallsCellSize) {
	    var _posY = (yy div dsGridWallsCellSize);
	    var _posX1 = (editorWall_x1 div dsGridWallsCellSize);
	    var _posX2 = (editorWall_x2 div dsGridWallsCellSize);
	    if dsGridWalls[# _posX1, _posY] != -1 return true;
	    if dsGridWalls[# _posX2, _posY] != -1 return true;
	}

	return false;



}
