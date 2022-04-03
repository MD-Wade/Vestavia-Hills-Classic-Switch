/// @description EnemyInitMovement();
function EnemyInitMovement() {

	movementEnabled = false;
	movementSpeed = 1.6 * statsSpeed;
	movementVelocityX = 0;
	movementVelocityY = 0;
	movementAcceleration = 0.35 * statsSpeed;
	movementFriction = 0.35;
	movementFrictionHit = rr(0.18, 0.22);
	movementKnockback = rr(1.5, 2.8);
	movementTimer = fs(1);
	movementSweepInterval = 2;
	movementAngleFactor = 0.95;



}
