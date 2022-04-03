/// @description EnemyExecuteKnockout(speed, direction);
/// @param speed
/// @param  direction
function EnemyExecuteKnockout() {

	var _inSpeed = argument[0];
	var _inDirection = argument[1];

	movementVelocityX = lengthdir_x(_inSpeed, _inDirection);
	movementVelocityY = lengthdir_y(_inSpeed, _inDirection);
	animSpriteCurrent = animSpriteDown;
	animFrame = 0;
	animFrameLegs = 0;
	stateCurrent = ESTATES.knockedOut;



}
