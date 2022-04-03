/// @description EditorDrawGrid();
function EditorDrawGrid() {

	draw_set_alpha(1);
	draw_set_colour(c_black);

	if !surface_exists(editorGridSurface)    {
	    editorGridSurface = surface_create_clear(editorMapWidth, editorMapHeight);
	    surface_set_target(editorGridSurface);
	    for (var i = 0; i <= max(editorGridRows, editorGridColumns); i ++) {
	        draw_line_width(i * editorGridSize, 0, i * editorGridSize, editorGridColumns * editorGridSize, editorGridLineWidth);
	        draw_line_width(0, i * editorGridSize, editorGridRows * editorGridSize, (i * editorGridSize), editorGridLineWidth);
	    }
	    surface_reset_target();
	}   else    {
	    draw_surface_ext(editorGridSurface, 0, 0, 1, 1, 0, c_black, 0.2);
	}



}
