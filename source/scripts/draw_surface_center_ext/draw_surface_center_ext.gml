/// @description draw_surface_center_ext(id, x, y, xscale, yscale, rot, color, alpha, x_angle, y_angle);
/// @param id
/// @param  x
/// @param  y
/// @param  xscale
/// @param  yscale
/// @param  rot
/// @param  color
/// @param  alpha
/// @param  x_angle
/// @param  y_angle
function draw_surface_center_ext(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {
	//
	//  Draws a surface centered at a given point with rotation,
	//  scaling, and color and alpha blending.
	//
	//      id          surface id, real
	//      x,y         position of center of surface, real
	//      xscale      horizontal scaling, real
	//      yscale      vertical scaling, real
	//      rot         rotation in degrees, real
	//      color       color blending, real
	//      alpha       alpha blending, real
	//
	///  GMLscripts.com/license
	{
	    var surface,sx,sy,xscale,yscale,rot,color,alpha,mx,my;
	    surface = argument0;
	    sx = argument1;
	    sy = argument2;
	    xscale = argument3;
	    yscale = argument4;
	    rot = argument5;
	    color = argument6;
	    alpha = argument7;
	    var _xAngle = argument8;
	    var _yAngle = argument9;
	    mx = surface_get_width(surface)/2;
	    my = surface_get_height(surface)/2;
	    //d3d_transform_stack_push();
	    d3d_transform_set_identity();
	    d3d_transform_add_rotation_x(_xAngle);
	    d3d_transform_add_rotation_y(_yAngle);
	    d3d_transform_add_translation(-mx,-my,0);
	    d3d_transform_add_scaling(xscale,yscale,0);
	    d3d_transform_add_rotation_z(rot);

	    d3d_transform_add_translation(sx,sy,0);
    
	    draw_surface_ext(surface,0,0,1,1,0,color,alpha);
	    //d3d_transform_stack_pop();
	    d3d_transform_set_identity();
	    return 0;
	}



}
