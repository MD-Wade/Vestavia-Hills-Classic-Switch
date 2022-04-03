/// @description EnemyInitAttacks();
function EnemyInitAttacks() {

	attackTickMax = fs(0.2) * statsSpeed;
	attackTick = 0;
	attackSpeed = statsSpeed;
	attackDamage = statsDamage;
	attackShake = 24;
	attackTargetHit = false;

	//Collision Array
	attackCollisionX[0] = x;
	attackCollisionY[0] = y;
	attackCollisionX[1] = x;
	attackCollisionY[1] = y;
	attackCollisionX[2] = x;
	attackCollisionY[2] = y;

	//Defaults
	attackType = "Melee";
	attackHurtType = "Blunt";
	attackDamage = 0;
	attackFrameMin = -1;
	attackFrameMax = -1;
	attackTriggerTick = 0;
	attackTriggerTickMax = -1;
	attackDurationTick = 0;
	attackDurationTickMax = -1;
	attackRange = 0;
	attackKnockback = 0;
	attackMirror = false;

	//Enemy Specific
	switch (object_index)   {
	    case objEnemyRunner:
	        attackType = "Melee";
	        attackHurtType = "Blunt";
	        attackDamage = round(3 * g.gameEnemyDifficultyFactor);
	        attackFrameMin = 2;
	        attackFrameMax = 4;
	        attackTriggerTickMax = fs(0.225);
	        attackDurationTickMax = fs(0.35);
	        attackKnockback = 4;
	        attackRange = 14;
	        attackMirror = false;
	    break;
    
	    case objEnemyBehemoth:
	        attackType = "Melee";
	        attackHurtType = "Blunt";
	        attackDamage = round(10 * g.gameEnemyDifficultyFactor);
	        attackFrameMin = 6;
	        attackFrameMax = 7;
	        attackTriggerTickMax = fs(0.125);
	        attackDurationTickMax = fs(1.25);
	        attackKnockback = 8;
	        attackRange = 30;
	        attackMirror = false;
	    break;
    
	    case objEnemyStandard:
	        attackType = "Melee";
	        attackHurtType = "Blunt";
	        attackDamage = round(4 * g.gameEnemyDifficultyFactor);
	        attackFrameMin = 2;
	        attackFrameMax = 4;
	        attackTriggerTickMax = fs(0.4);
	        attackDurationTickMax = fs(0.6);
	        attackKnockback = 6;
	        attackRange = 16;
	        attackMirror = false;
	    break;
	}



}
