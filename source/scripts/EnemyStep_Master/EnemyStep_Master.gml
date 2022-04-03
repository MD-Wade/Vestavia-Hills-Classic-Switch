/// @description EnemyStep_Master();
function EnemyStep_Master() {

	switch (stateCurrent)   {
	    case ESTATES.Idle:
	        EnemyStepIdle();
	        EnemyStepTarget();
	        break;
	    case ESTATES.Spawn:
	        EnemyStepFadeIn();
	        break;
	    case ESTATES.Walk:
	        EnemyStepTarget();
	        EnemyStepPathfinding();
	        EnemyStepAnimation();
	        EnemyStepDoors();
	        EnemyStepAttackTrigger();
	        EnemyStepClimbTrigger();
	        break;
	    case ESTATES.Attack:
	        EnemyStepTarget();
	        EnemyStepPathfinding();
	        EnemyStepAnimationAttack();
	        EnemyStepAttack();
	        break;
	    case ESTATES.enterWindow:
	        EnemyStepWindowClimb();
	        break;
	    case ESTATES.knockedOut:
	        EnemyStepPhysics();
	        break;
	    case ESTATES.Dead:
	        EnemyStepPhysics();
	        EnemyStepDeathBake();
	        break;
	    case ESTATES.Knockback:
	        EnemyStepPhysics();
	        EnemyStepKnockback();
	        EnemyStepAnimationKnockback();
	        break;
	}
	EnemyStepDepth();

	//Clamp to Room
	x = clamp(x, 8, room_width - 8);
	y = clamp(y, 8, room_height - 8);



}
