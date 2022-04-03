/// @description PlayerInitStates();
function PlayerInitStates() {

	enum PSTATES    {
	    Walk, Attack, Reload, Down, Interact, Barricading, Dead
	}

	stateCurrent = PSTATES.Walk;
	stateLast = -1;



}
