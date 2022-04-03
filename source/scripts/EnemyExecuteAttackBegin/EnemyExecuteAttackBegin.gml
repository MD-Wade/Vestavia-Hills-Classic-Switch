/// @description EnemyExecuteAttackBegin();
function EnemyExecuteAttackBegin() {

	//Update State and Weapon Stats
	stateCurrent = ESTATES.Attack;
	attackTargetHit = false;

	//Update Animation
	animSpriteCurrent = animSpriteAttack;
	animFrame = 0;

	switch (attackType)  {
	    case "Gun":
	        break;
	    case "Melee":
	        sound_here(choose(sndMeleeSwing1, sndMeleeSwing2, sndMeleeSwing3), 128, false, rr(0.94, 1.02));
	        break;
	}



}
