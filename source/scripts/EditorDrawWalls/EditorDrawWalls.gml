/// @description EditorDrawWalls();
function EditorDrawWalls() {

	for (var xx = 0; xx < dsGridWallsWidth; xx ++)  {
	    for (var yy = 0; yy < dsGridWallsHeight; yy ++) {
	        var _wallValue = dsGridWalls[# xx, yy];
	        switch (_wallValue)  {
	            case -1:
	                continue;
	                break;
	            case 0:
	                var _wallSprite = sprWall;
	                var _wallAngle = 0;
	                break;
	            case 1:
	                var _wallSprite = sprWall;
	                var _wallAngle = 90;
	                break;
	        }
        
	        var _wallX = (xx * dsGridWallsCellSize);
	        var _wallY = (yy * dsGridWallsCellSize);
	        draw_sprite_ext(_wallSprite, 0, _wallX, _wallY, 1, 1, _wallAngle, c_white, 1);
	    }
	}



}
