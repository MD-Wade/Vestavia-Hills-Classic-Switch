/// @description PlayerStepAttack();
function PlayerStepAttack() {

	switch (WeaponReturnStat("weaponType")) {
	    case "Gun":
	        break;
        
	    case "Melee":
	        PlayerStepAttackCollisionUpdate();
	        PlayerStepAttackCollisionTrigger();
	        break;
	}



}
