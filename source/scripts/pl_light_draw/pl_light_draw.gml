/// @description  pl_light_draw()
function pl_light_draw() {

	// Draw light
	draw_surface(_pl_lightSurface, x - _pl_baseRadius - __view_get( e__VW.XView, 0 ), y - _pl_baseRadius - __view_get( e__VW.YView, 0 ));



}
