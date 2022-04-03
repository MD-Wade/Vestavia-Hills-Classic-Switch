/// @description EnemyStepDoors();
function EnemyStepDoors() {

	var _doorID = instance_nearest(x, y, objDoor);
	if collision_line(x, y, x + lengthdir_x(24, animAngle), y + lengthdir_y(24, animAngle), _doorID, true, -1)  {
	    with (_doorID)  {
	        if !doorOpen
	            event_user(0);
	    }
	}



}
