/// @description GameExecuteWaveIncrement();
function GameExecuteWaveIncrement() {

	waveIndex ++;
	waveTickSpawn = 0;
	waveSpawnCount = 0;
	waveSpawnQuota += irandom_range(1, 3);
	g.gameEnemyDifficultyFactor += rr(0.1, 0.16);

	//Special Rounds
	if (waveIndex mod waveSpecialFrequency) == 0   {
	    if chance(0.5)  {
	        GameExecuteMessageSlowdown(2);
	    }   else    {
	        if (g.gameDifficulty < 3)   {
	            GameExecuteMessageSlowdown(1);
	        }   else    {
	            GameExecuteMessageSlowdown(3);
	        }
	    }
	}

	//Achievements
	if (waveIndex == 20)    {
	    GameExecuteAchievement(ACHIEVEMENTS.AMOE);
	}



}
