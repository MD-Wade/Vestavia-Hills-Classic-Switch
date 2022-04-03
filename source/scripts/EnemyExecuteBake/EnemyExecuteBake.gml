/// @description EnemyExecuteBake();
function EnemyExecuteBake() {

	if surface_exists(global.surfaceParticles)  {
	    surface_set_target(global.surfaceParticles);
	    draw_sprite_ext(animSpriteCurrent, animFrame, x * g.settingResolutionScale, y * g.settingResolutionScale, animScale * g.settingResolutionScale, animScale * animMeleeMirror * g.settingResolutionScale, animAngle, animColour, animAlpha);
	    surface_reset_target();
	}

	instance_destroy();



}
