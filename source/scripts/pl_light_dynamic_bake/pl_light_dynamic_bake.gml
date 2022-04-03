/// @description pl_light_dynamic_bake();
function pl_light_dynamic_bake() {

	//Delete if Applicable
	if surface_exists(lightDynamicSurface)
	    surface_free(lightDynamicSurface);
    
	//Recreate Surface
	lightDynamicSurface = surface_create(_pl_baseRadius * 2, _pl_baseRadius * 2);

	//Redraw if Necessary
	if lightDynamicUpdate   {
	    surface_set_target(lightDynamicSurface);
	    draw_clear_alpha(c_black, 0);
	    var _lightPrecision = 0.1;
	    var _maskScale = (_pl_baseRadius / 256);
    
	    //Bake Rayscanned Lighting
	    for (var i = 0; i < 360; i += _lightPrecision)  {
	        var _posX = x + lengthdir_x(_pl_baseRadius, i);
	        var _posY = y + lengthdir_y(_pl_baseRadius, i);
	        var _posCollision1 = collision_line_point(x, y, _posX, _posY, parWall, true, -1);
	        var _collisionX = _posCollision1[1]
	        var _collisionY = _posCollision1[2]
	        var _posDistance = point_distance(x, y, _collisionX, _collisionY) / _pl_baseRadius;
	        var _posScale = _posDistance * 256;
	        d3d_transform_set_identity();
	        d3d_transform_add_rotation_z(i);
	        d3d_transform_add_translation(_pl_baseRadius, _pl_baseRadius, 0);
	        draw_sprite_part_ext(maskLightingLine, 0, 0, 0, _posScale, 1, 0, 0, _maskScale, (_lightPrecision * 10), c_white, 1);
	        d3d_transform_set_identity();
	    }

	    //Finish and Save
	    surface_reset_target();
	    lightDynamicUpdate = false;
	}   else    {

	    //Load if Unchanged
	    pl_light_dynamic_buffer_load(lightDynamicSurface);
	}



}
