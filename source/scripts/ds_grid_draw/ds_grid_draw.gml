/// @description  ds_grid_draw(grid, x, y, cellwidth, cellheight)
/// @param grid
/// @param  x
/// @param  y
/// @param  cellwidth
/// @param  cellheight
function ds_grid_draw(argument0, argument1, argument2, argument3, argument4) {
	//
	//  Draws the data of a given grid at a screen location.
	//
	//      grid        grid data structure, id
	//      x,y         screen position, real
	//
	/// GMLscripts.com/license
	{
	    var grid = argument0;
	    var sx = argument1;
	    var sy = argument2;
	    var cw = argument3;
	    var ch = argument4;

	    var w = ds_grid_width(grid);
	    var h = ds_grid_height(grid);

	    var M = ds_grid_get_max(grid,0,0,w-1,h-1);
	    var m = ds_grid_get_min(grid,0,0,w-1,h-1);
	    if (M == m) var f = 0 else var f = 1/(M-m);

	    for (var i=0; i<w; i++)
	    {
	        for (var j=0; j<h; j++)
	        {
	            var value = f*(ds_grid_get(grid,i,j)-m);
	            draw_set_colour(make_color_hsv(0,0,clamp(255*value,0,255)));
	            var _x1 = (sx + (i * cw));
	            var _y1 = (sy + (j * ch));
	            var _x2 = (sx + ((i + 1) * cw));
	            var _y2 = (sy + ((j + 1) * ch));
	            draw_rectangle(_x1, _y1, _x2, _y2, false);
	        }
	    }

	    return 0;
	}



}
