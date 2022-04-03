/// @description pl_light_init_dynamic(radius, colour, alpha);
/// @param radius
/// @param  colour
/// @param  alpha
function pl_light_init_dynamic() {

	lightSwitchIndex = -1;
	lightEnabled = true;
	lightFlicker = false;
	lightRadius = argument[0];
	lightColour = argument[1];
	lightAlpha = argument[2];

	switch (g.settingLightingQuality)   {
	    case 2:
	        lightDynamicSurface = -1;
	        lightDynamicEnabled = true;
	        lightDynamicUpdate = true;
	        pl_light_init(lightRadius, lightColour, lightAlpha);
	        pl_light_dynamic_bake();
	        break;
	    default:
	        lightDynamicEnabled = false;
	        lightDynamicUpdate = false;
	        pl_light_init(lightRadius, lightColour, lightAlpha);
	        break;
	}



}
