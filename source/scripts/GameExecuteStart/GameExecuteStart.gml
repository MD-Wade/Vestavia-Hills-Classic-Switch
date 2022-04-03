/// @description GameExecuteStart();
function GameExecuteStart() {

	//GameExecuteMapLoad(mapString);

	instance_create(0, 0, objLighting);
	instance_create(0, 0, objSurfaceParticles);

	if (g.settingBackground)
	    instance_create(0, 0, objBackgroundGame);

	g.gameEnemyDifficultyFactor = 1.0;

	GameInitPathfinding();
	GameInitSplitscreen();
	GameInitWaves();
	GameExecutePlayerSpawn();
	GameInitTimescale();
	GameExecuteMusicPlay();

	stateCurrent = GSTATES.Game;



}
