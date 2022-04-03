/// @description EnemyStepAttack();
function EnemyStepAttack() {

	switch (attackType) {
	    case "Gun":
	        break;
        
	    case "Melee":
	        EnemyStepAttackCollisionUpdate();
	        EnemyStepAttackCollisionTrigger();
	        break;
	}



}
