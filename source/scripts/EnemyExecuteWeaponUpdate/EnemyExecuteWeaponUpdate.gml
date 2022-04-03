/// @description EnemyExecuteWeaponUpdate();
function EnemyExecuteWeaponUpdate() {

	weaponTickCurrent = 0;
	weaponSpriteWalk = animSpriteWalk;
	weaponSpeed = g.weaponStatsEnemySpeed[weaponCurrent];
	weaponRange = g.weaponStatsEnemyRange[weaponCurrent];
	weaponType = g.weaponStatsEnemyType[weaponCurrent];
	weaponAccuracy = g.weaponStatsEnemyAccuracy[weaponCurrent];
	weaponFirstFrame = g.weaponStatsEnemyFirstFrame[weaponCurrent];
	weaponLastFrame = g.weaponStatsEnemyLastFrame[weaponCurrent];
	weaponHurtType = g.weaponStatsEnemyHurtType[weaponCurrent];
	weaponPenetration = g.weaponStatsEnemyPenetration[weaponCurrent];
	weaponDamage = g.weaponStatsEnemyDamage[weaponCurrent];
	weaponKnockback = g.weaponStatsEnemyKnockback[weaponCurrent];
	weaponMirror = g.weaponStatsEnemyMirror[weaponCurrent];
	animSprite = weaponSpriteWalk;

	switch (object_index)   {
	    case objEnemyRunner:
	        animSpriteAttack = choose(sprERunnerAttack1, sprERunnerAttack2);
	        break;
	}



}
