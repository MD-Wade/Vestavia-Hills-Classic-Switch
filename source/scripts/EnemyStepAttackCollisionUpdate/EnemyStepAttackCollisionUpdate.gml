/// @description EnemyStepAttackCollisionUpdate();
function EnemyStepAttackCollisionUpdate() {

	var factorBack = 0.2;
	var factorSide = 1.1;
	var factorTotal = 1.5;
	var angleDifference = 35;

	attackCollisionX[0] = x + lengthdir_x(attackRange * factorBack * factorTotal, animAngle - 180);
	attackCollisionY[0] = y + lengthdir_y(attackRange * factorBack * factorTotal, animAngle - 180);
	attackCollisionX[1] = x + lengthdir_x(attackRange * factorSide * factorTotal, animAngle - angleDifference);
	attackCollisionY[1] = y + lengthdir_y(attackRange * factorTotal, animAngle - angleDifference);
	attackCollisionX[2] = x + lengthdir_x(attackRange * factorSide * factorTotal, animAngle + angleDifference);
	attackCollisionY[2] = y + lengthdir_y(attackRange * factorTotal, animAngle + angleDifference);



}
