/// @description  pl_light_update()
function pl_light_update() {

	// Prepare the light surface
	if (!surface_exists(_pl_lightSurface)) {
	    _pl_lightSurface = surface_create(_pl_baseRadius * 2, _pl_baseRadius * 2);
	}
	surface_set_target(_pl_lightSurface);

	    draw_clear(c_black);
    
	    // Draw light
	    draw_set_alpha(_pl_alpha);
    
	    if lightMaskCustom
	        draw_sprite_ext(sprite_index, image_index, _pl_baseRadius, _pl_baseRadius, image_xscale, image_yscale, image_angle, _pl_color, _pl_alpha);
	    else    {
	        if lightDynamicEnabled
	            if surface_exists(lightDynamicSurface)
	                draw_surface_center_ext(lightDynamicSurface, _pl_baseRadius, _pl_baseRadius, 1, 1, 0, _pl_color, _pl_alpha, 0, 0);
	            else    {
	                lightDynamicUpdate = true;
	                pl_light_dynamic_bake();
	            }
	        else   
	            draw_circle_colour(_pl_baseRadius, _pl_baseRadius, _pl_radius, _pl_color, c_black, false);
	    }
    
	    // Reset
	    draw_set_alpha(1);
	    draw_set_color(c_black);

	// Reset
	surface_reset_target();



}
