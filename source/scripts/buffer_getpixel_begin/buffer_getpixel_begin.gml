/// @description buffer_getpixel_begin(surface)
/// @param surface
function buffer_getpixel_begin(argument0) {

	var ww = surface_get_width(argument0);
	var hh = surface_get_height(argument0);

	var buff1 = buffer_create(((ww*hh)*4),buffer_grow,1);
	var buff2 = buffer_create(((ww*hh)*4),buffer_fast,1);

	buffer_get_surface(buff1,argument0,0)
	buffer_copy(buff1,0,(ww*hh)*4,buff2,0)
	buffer_delete(buff1);

	return buff2;



}
