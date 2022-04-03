/// @description PlayerStepAttackCollisionUpdate();
function PlayerStepAttackCollisionUpdate() {

	var factorBack = 0.2;
	var factorSide = 1.1;
	var factorTotal = 1.5;
	var angleDifference = 35;
	var _meleeRange = WeaponReturnStat("meleeRange");

	attackCollisionX[0] = x + lengthdir_x(_meleeRange * factorBack * factorTotal, animAngle - 180);
	attackCollisionY[0] = y + lengthdir_y(_meleeRange * factorBack * factorTotal, animAngle - 180);
	attackCollisionX[1] = x + lengthdir_x(_meleeRange * factorSide * factorTotal, animAngle - angleDifference);
	attackCollisionY[1] = y + lengthdir_y(_meleeRange * factorTotal, animAngle - angleDifference);
	attackCollisionX[2] = x + lengthdir_x(_meleeRange * factorSide * factorTotal, animAngle + angleDifference);
	attackCollisionY[2] = y + lengthdir_y(_meleeRange * factorTotal, animAngle + angleDifference);



}
