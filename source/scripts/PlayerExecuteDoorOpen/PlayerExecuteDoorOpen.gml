/// @description PlayerExecuteDoorOpen(id);
/// @param id
function PlayerExecuteDoorOpen() {

	var _doorID = argument[0];

	with (_doorID)  {
	    if doorVertical {
	        if (other.x > x)
	            doorAngleOpen = doorAngleOpen2;
	        else
	            doorAngleOpen = doorAngleOpen1;
	    }   else    {
	        if (other.y > y)
	            doorAngleOpen = doorAngleOpen2;
	        else
	            doorAngleOpen = doorAngleOpen1;
	    }
    
	    event_user(0);
	}



}
