/// @description particle_bake_surface();
function particle_bake_surface() {

	if surface_exists(g.surfaceParticles)   {
	    surface_set_target(g.surfaceParticles);
	    draw_sprite_ext(sprite_index, image_index, x * g.settingResolutionScale, y * g.settingResolutionScale, image_xscale * g.settingResolutionScale, image_yscale * g.settingResolutionScale, image_angle, image_blend, image_alpha);
	    surface_reset_target();
	    instance_destroy();
	}   else    {
	    g.surfaceParticles = surface_create_clear(room_width * g.settingResolutionScale, room_height * g.settingResolutionScale);
	}



}
