/// @description pl_light_create_custom(colour, alpha, sprite_index);
/// @param colour
/// @param  alpha
/// @param  sprite_index
function pl_light_create_custom() {

	lightIndex = instance_create(x, y, objLightCustom);

	if instance_exists(lightIndex)  {
	    lightIndex.lightColour = argument[0];
	    lightIndex.lightAlpha = argument[1];
	    lightIndex.image_xscale = image_xscale;
	    lightIndex.image_yscale = image_yscale;
	    lightIndex.image_angle = image_angle;
	    lightIndex.sprite_index = argument[2];
	}



}
