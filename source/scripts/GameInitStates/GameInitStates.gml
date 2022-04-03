/// @description GameInitStates();
function GameInitStates() {

	enum GSTATES    {
	    loadingAudio, Menu, Game
	}

	stateCurrent = GSTATES.loadingAudio;
	stateLast = -1;



}
