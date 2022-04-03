/// @description GameInit_Master();
function GameInit_Master() {

	// r/iamveryrandom
	randomize();

	//Initialize Maps
	gameMap = -1;

	//Rendering
	g.renderGrayscale = false;

	//Initialize All
	GameInitSettings();
	GameInitAudio();
	GameInitMusic();
	GameInitWeapons();
	GameInitStates();
	GameInitEnemies();
	GameInitParticles();
	GameInitPathfinding();
	GameInitPause();
	GameInitWaves();
	GameInitTimescale();
	GameInitGUI();
	GameInitInteractables();

	

}
