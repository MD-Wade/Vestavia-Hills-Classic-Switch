/// @description EnemyInitAnimation();
function EnemyInitAnimation() {

	//Enemy Specific
	switch (object_index)   {
	    case objEnemyStandard:
	        animSpriteWalk = sprEStandardWalk;
	        animSpriteAttack = sprEStandardAttack;
	        animSpriteClimb = sprEStandardClimb;
	        animSpriteDamaged = sprEStandardStumble;
	        animSpriteDown = sprEStandardDeadNonLethal;
	        animSpriteLegs = sprEStandardLegs;
	    break;

	    case objEnemyBehemoth:
	        animSpriteWalk = sprEStandardWalk;
	        animSpriteAttack = sprEBehemothAttack;
	        animSpriteClimb = sprEStandardClimb;
	        animSpriteDamaged = sprEStandardStumble;
	        animSpriteDown = sprEStandardDeadNonLethal;
	        animSpriteLegs = sprEStandardLegs;
	    break;
    
	    case objEnemyRunner:
	        animSpriteWalk = sprERunnerWalk;
	        animSpriteAttack = sprERunnerAttack1;
	        animSpriteClimb = sprERunnerClimb;
	        animSpriteDamaged = sprERunnerStumble;
	        animSpriteDown = sprERunnerDeadNonLethal;
	        animSpriteLegs = sprERunnerLegs;
	    break;
	}

	animSpriteCurrent = animSpriteWalk;

	animMeleeMirror = 1;
	animFrame = 0;
	animFrameLegs = 0;
	animAngle = point_direction(x, y, room_width / 2, room_height / 2);
	animColour = c_white;
	animScale = 1;
	animAlpha = 0;
	animSpeed = 0;
	animSpeedMax = 0.2 * statsSpeed;
	alphaFallback = 0;

	drawHealthbarWidth = 26;
	drawHealthbarHeight = 6;
	drawHealthbarBorder = 2;
	drawHealthbar_x1 = x - (drawHealthbarWidth / 2);
	drawHealthbar_y1 = bbox_top - (drawHealthbarHeight + (drawHealthbarBorder * 1.5));
	drawHealthbar_x2 = x + (drawHealthbarWidth / 2);
	drawHealthbar_y2 = drawHealthbar_y1 + (drawHealthbarHeight);

	damageFlash = 0;
	damageFlashAmount = 0.5;
	damageFlashRate = 0.1;



}
