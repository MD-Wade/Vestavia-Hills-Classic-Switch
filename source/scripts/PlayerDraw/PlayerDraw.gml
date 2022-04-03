/// @description PlayerDraw();
function PlayerDraw() {

	animColour = merge_colour(c_white, animColourCrit, animFlickerCrit);
	animColour = merge_colour(animColour, animColourStamina, animFlickerStamina);

	animFlickerCrit = approach(animFlickerCrit, 0, 0.02 * g.gameTimescale);
	animFlickerStamina = approach(animFlickerStamina, 0, 0.06 * g.gameTimescale);

	draw_sprite_ext(animSpriteLegs, animFrameLegs, x, y, animScale, animScale, animAngleLegs, animColour, animAlpha);
	draw_sprite_ext(animSprite, animFrame, x, y, animScale, animScale * animMeleeMirror, animAngle, animColour, animAlpha);



}
