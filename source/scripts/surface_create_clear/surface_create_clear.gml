/// @description surface_create_clear(width, height);
/// @param width
/// @param  height
function surface_create_clear() {

	var _Surface = surface_create(argument[0], argument[1]);
	surface_set_target(_Surface);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();

	return _Surface;



}
