/// @description EnemyReturnStanding(state);
/// @param state
function EnemyReturnStanding() {

	var _inState = argument[0];

	switch (_inState)   {
	    case ESTATES.Dead:
	    case ESTATES.knockedOut:
	        return false;
	        break;
        
	    default:
	        return true;
	        break;
	}



}
