/// @description EditorStepWalls();
function EditorStepWalls() {

	editorWallPlaceValid = inputMouseOverlap and !editorWallPlaceCollision;

	if mouse_check_button_pressed(mb_left)  {
	    if inputMouseOverlap    {
	        if editorWallStarted    {
	            if (!editorWallPlaceCollision)   {
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
	                    dsGridWalls[# _posX, _posY1] = 0;
	                    dsGridWalls[# _posX, _posY2] = 0;
	                }
                
	                for (var yy = (editorWall_y1 + dsGridWallsCellSize); yy < (editorWall_y2 + dsGridWallsCellSize); yy += dsGridWallsCellSize) {
	                    var _posY = (yy div dsGridWallsCellSize);
	                    var _posX1 = (editorWall_x1 div dsGridWallsCellSize);
	                    var _posX2 = (editorWall_x2 div dsGridWallsCellSize);
	                    dsGridWalls[# _posX1, _posY] = 1;
	                    dsGridWalls[# _posX2, _posY] = 1;
	                }
            
	                stateCurrent = EDITOR_STATES.OBJECT_PLACE;
	                editorWallStarted = false;
	            }
	        }   else    {
	            editorWallStarted = true;
	            editorWallPlaceCollision = true;
	            editorWall_x1 = inputMouseGridX;
	            editorWall_y1 = inputMouseGridY;
	        }
	    }
	}

	if (editorWallStarted)  {
	    editorWall_x2 = inputMouseGridX;
	    editorWall_y2 = inputMouseGridY;
	    editorWallPlaceCollision = EditorReturnWallPlaceCollision();
	}



}
