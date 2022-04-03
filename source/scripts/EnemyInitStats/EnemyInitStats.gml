/// @description EnemyInitStats();
function EnemyInitStats() {

	switch (object_index)   {
	    case objEnemyRunner:
	        switch (g.gameDifficulty)    {
	            case 0:
	                statsDamage = rr(0.4, 0.6);
	                statsSpeed = rr(1.2, 1.5);
	                statsHealthMax = 5;
	                break;
                
	            case 1:
	                statsDamage = rr(0.65, 0.70);
	                statsSpeed = rr(1.35, 1.6);
	                statsHealthMax = 8;
	                break;
                
	            case 2:
	                statsDamage = rr(0.75, 1);
	                statsSpeed = rr(1.5, 1.8);
	                statsHealthMax = 12;
	                break;
	            case 3:
	                statsDamage = rr(0.8, 1.2);
	                statsSpeed = rr(1.8, 2.1);
	                statsHealthMax = 20;
	                break;
	        }
	        animSpeedMax = 0.325;
	        statsResistanceKnockback = -0.35;
	    break;
    
	    case objEnemyBehemoth:
	        switch (g.gameDifficulty)    {
	            case 0:
	                statsDamage = rr(2.8, 3.0);
	                statsSpeed = rr(0.45, 0.6);
	                statsHealthMax = 200;
	                break;
                
	            case 1:
	                statsDamage = rr(3.0, 3.25);
	                statsSpeed = rr(0.5, 0.55);
	                statsHealthMax = 240;
	                break;
                
	            case 2:
	                statsDamage = rr(3.25, 4.4);
	                statsSpeed = rr(0.55, 0.6);
	                statsHealthMax = 280;
	                break;
                
	            case 3:
	                statsDamage = rr(4.45, 4.8);
	                statsSpeed = rr(0.6, 0.75);
	                statsHealthMax = 320;
	                break;
	        }
    
	        animSpeedMax = 0.1;
	        animScale = 1.65;
	        drawHealthbarWidth = 64;
	        statsResistanceKnockback = 0.6;
	    break;
    
	    case objEnemyStandard:
	    default:
	        switch (g.gameDifficulty)    {
	            case 0:
	                statsDamage = rr(0.8, 1.0);
	                statsSpeed = rr(0.26, 0.48);
	                statsHealthMax = 12;
	                break;
                
	            case 1:
	                statsDamage = rr(0.9, 1.0);
	                statsSpeed = rr(0.3, 0.6);
	                statsHealthMax = 15;
	                break;
                
	            case 2:
	                statsDamage = rr(1.1, 1.25);
	                statsSpeed = rr(0.5, 0.85);
	                statsHealthMax = 22;
	                break;
                
	            case 3:
	                statsDamage = rr(1.5, 2.5);
	                statsSpeed = rr(0.6, 1.1);
	                statsHealthMax = 30;
	                break;
	        }
	        statsHealth = statsHealthMax;
	        statsResistanceKnockback = 0;
	    break;
	}

	//Scale to Difficulty
	statsDamage = statsDamage * g.gameEnemyDifficultyFactor;
	statsSpeed = statsSpeed * g.gameEnemyDifficultyFactor;
	statsHealthMax = statsHealthMax * g.gameEnemyDifficultyFactor;
	statsHealth = statsHealthMax;



}
