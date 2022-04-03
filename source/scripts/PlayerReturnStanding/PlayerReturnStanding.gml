/// @description PlayerReturnStanding(state);
/// @param state
function PlayerReturnStanding() {

	var _inState = argument[0];

	switch (_inState)   {
	    case PSTATES.Down:
	    case PSTATES.Dead:
	        return false;
	        break;
        
	    default:
	        return true;
	        break;
	}



}
