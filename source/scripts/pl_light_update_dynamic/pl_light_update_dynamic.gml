/// @description pl_light_update_dynamic();
function pl_light_update_dynamic() {

	if lightEnabled {
	    if lightFlicker {
	        pl_light_set_alpha(rr(0, lightAlpha));
	    }   else    {
	        pl_light_set_alpha(lightAlpha);
	    }
	}   else    {
	    pl_light_set_alpha(0);
	}

	//Debugging
	if keyboard_check_pressed(vk_f5)
	    if g.settingDebugMode
	        if surface_exists(lightDynamicSurface)
	            surface_save(lightDynamicSurface, game_save_id + "DEBUG\\" + string(id) + ".png")



}
