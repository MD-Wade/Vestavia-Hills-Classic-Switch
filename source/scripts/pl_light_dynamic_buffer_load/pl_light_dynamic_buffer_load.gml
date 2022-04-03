/// @description pl_light_dynamic_buffer_load(surface);
/// @param surface
function pl_light_dynamic_buffer_load() {

	var _surfaceIndex = argument[0];
	var _surfaceWidth = surface_get_width(_surfaceIndex);
	var _surfaceHeight = surface_get_height(_surfaceIndex);

	surface_set_target(_surfaceIndex);
	draw_clear_alpha(c_black, 0);
	for (var xx = 0; xx < _surfaceWidth; xx ++) {
	    for (var yy = 0; yy < _surfaceHeight; yy ++)    {
	        var _indexColour = buffer_getpixel(lightDynamicBuffer, xx, yy, _surfaceWidth, _surfaceHeight);
	        var _indexAlpha = buffer_getpixel_a(lightDynamicBuffer, xx, yy, _surfaceWidth, _surfaceHeight);
	        draw_set_colour(_indexColour);
	        draw_set_alpha(_indexAlpha);
	        draw_dot(xx, yy);
	    }
	}

	surface_reset_target();
	draw_set_colour(c_white);
	draw_set_alpha(1);



}
