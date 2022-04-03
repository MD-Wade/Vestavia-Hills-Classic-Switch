/// @description GameStepUpdate();
function GameStepUpdate() {

	//Halt Execution
	if (pauseEnabled)   {
	    GameStepPauseMenu();
	}   else    {
	    GameStepSpawnEnemies();
	    GameStepTimescaleUpdate();
	}

	//Pause Toggle
	GameStepPauseTrigger();



}
