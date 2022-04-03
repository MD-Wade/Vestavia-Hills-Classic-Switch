/// @description  pl_draw()
function pl_draw() {

	// Draw vivid lightmap
	if (_pl_vivid) {
	    draw_set_blend_mode(bm_add);
	    draw_surface_ext(_pl_lightmap, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), 1, 1, 0, c_white, 0.1);
	}
    
	// Draw standard lightmap
	draw_set_blend_mode_ext(bm_dest_color, bm_src_color);
	draw_surface(_pl_lightmap, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
	draw_set_blend_mode(bm_normal);



}
