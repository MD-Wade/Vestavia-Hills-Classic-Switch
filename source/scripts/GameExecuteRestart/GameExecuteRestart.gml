/// @description GameExecuteRestart();
function GameExecuteRestart() {

	with (objGame)  {
	    audio_stop_all();
	    GameInitEnemies();
	    GameInitWaves();
	    room_restart();
	}



}
