/// @description EnemyDrawSelf();
function EnemyDrawSelf() {

	draw_sprite_ext(animSpriteLegs, animFrameLegs, x, y, animScale, animScale, animAngle, animColour, animAlpha);
	draw_sprite_ext(animSpriteCurrent, animFrame, x, y, animScale, animScale * animMeleeMirror, animAngle, animColour, animAlpha);



}
