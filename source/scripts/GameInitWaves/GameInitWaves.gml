/// @description GameInitWaves();
function GameInitWaves() {

	enum GAME_WAVE_TYPES    {
	    Standard, Onslaught, Boss
	}
	waveTypeCurrent = GAME_WAVE_TYPES.Standard;

	waveIndex = 1;
	waveSpawnQuota = 4;
	waveSpawnCount = 0;
	waveTickSpawn = 0;
	waveTickSpawnMax = fs(2);

	waveOnslaughtFactorTick = 2;
	waveOnslaughtFactorQuota = 2;

	//More Common Special Waves on Harder Difficulties
	switch (g.gameDifficulty)   {
	    case 0:
	        waveSpecialFrequency = 6;
	        break;
	    case 1:
	        waveSpecialFrequency = 5;
	        break;
	    case 2:
	        waveSpecialFrequency = 4;
	        break;
	    case 3:
	        waveSpecialFrequency = 3;
	        break;
	}



}
