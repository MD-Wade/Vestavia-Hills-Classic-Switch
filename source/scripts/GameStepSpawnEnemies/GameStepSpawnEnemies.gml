/// @description GameStepSpawnEnemies();
function GameStepSpawnEnemies() {

	var _guiWarningAlphaTarget = wave(0, 0.2, 8, 0);

	switch (waveTypeCurrent)    {
	    case GAME_WAVE_TYPES.Standard:
	        var _calcSpawnQuota = ceil(waveSpawnQuota * g.settingPlayerCount);
	        var _calcTickRate = (g.gameTimescale * g.settingPlayerCount);
        
	        if (waveSpawnCount < _calcSpawnQuota)  {
	            waveTickSpawn = approach(waveTickSpawn, waveTickSpawnMax, _calcTickRate);
	            if (waveTickSpawn >= (waveTickSpawnMax))    {
	                waveTickSpawn = 0;
	                waveSpawnCount ++;
	                GameExecuteEnemySpawn();
	            }
	        }   else    {
	            if !GameReturnEnemyExists() {
	                GameExecuteWaveIncrement();
	            }
	        }
	        _guiWarningAlphaTarget = 0;
	    break;
    
	    case GAME_WAVE_TYPES.Onslaught:
	        var _calcSpawnQuota = ceil((waveSpawnQuota * waveOnslaughtFactorQuota) * g.settingPlayerCount);
	        var _calcTickRate = ((g.gameTimescale * g.settingPlayerCount) * waveOnslaughtFactorTick);
	        if (waveSpawnCount < _calcSpawnQuota)  {
	            waveTickSpawn = approach(waveTickSpawn, waveTickSpawnMax, _calcTickRate);
	            if (waveTickSpawn >= (waveTickSpawnMax))    {
	                waveTickSpawn = 0;
	                waveSpawnCount ++;
	                GameExecuteEnemySpawn();
	            }
	        }   else    {
	            if !GameReturnEnemyExists() {
	                waveTickSpawn = 0;
	                waveSpawnCount = 0;
	                GameExecuteMessageSlowdown(0);
	            }
	        }
	    break;
    
	    case GAME_WAVE_TYPES.Boss:
	        if !GameReturnBossExists()
	            GameExecuteMessageSlowdown(0);
	    break;
	}

	///Update Warning
	guiWarningAlpha = lerp(guiWarningAlpha, _guiWarningAlphaTarget, 0.05 * g.gameTimescale);

	/*
	if !GameReturnBossExists()  {
	    if onslaughtEnabled {
	        var _calcEnemyOnslaughtQuota = ceil(onslaughtEnemyQuota * g.settingPlayerCount);
	        var _calcEnemyOnslaughtTickMax = ceil(onslaughtEnemyTickMax / g.settingPlayerCount);
    
	        onslaughtEnemyTick = approach(onslaughtEnemyTick, _calcEnemyOnslaughtTickMax, g.gameTimescale);
	        if (onslaughtEnemyTick >= _calcEnemyOnslaughtTickMax)  {
	            if (onslaughtEnemyCount < onslaughtEnemyQuota)  {
	                onslaughtEnemyTick = 0;
	                onslaughtEnemyCount += 1;
	                GameExecuteEnemySpawn();
	            }   else    {
	                if !instance_exists(parEnemy)   {
	                    //Message
	                    GameExecuteMessageSlowdown(1);
                
	                    //Make More Difficult
	                    onslaughtEnemyCount = 0;
	                    onslaughtEnemyQuota += irandom_range(onslaughtIncrementMin, onslaughtIncrementMax);
	                    onslaughtEnemyTickMax = round(onslaughtEnemyTickMax * rr(0.93, 0.95));
	                }
	            }
	            onslaughtEnemyTick = 0;
	        }
	    }   else    {
	        var _calcEnemyQuota = ceil(waveAmountMax * g.settingPlayerCount);
	        var _timerTarget = ceil((enemyTimerMax * waveSpawnFactor) / g.settingPlayerCount);
	        if waveAmountCurrent < _calcEnemyQuota    {
	            if (enemyTimer >= (_timerTarget))  {
	                GameExecuteEnemySpawn();
	                enemyTimer = 0;
	                waveAmountCurrent ++;
	            }   else    {
	                enemyTimer = approach(enemyTimer, _timerTarget, g.gameTimescale);
	            }
	        }   else    {
	            if !instance_exists(parEnemy)   {
	                GameExecuteWaveIncrement();
	            }
	        }
	    }
	}


/* end GameStepSpawnEnemies */
}
