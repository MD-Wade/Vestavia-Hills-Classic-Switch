/// @description ShadersDrawGaussian();
function ShadersDrawGaussian() {

	var surfaceWidth = surface_get_width(application_surface);
	var surfaceHeight = surface_get_height(application_surface);
	var guiWidth = surfaceWidth;
	var guiHeight = surfaceHeight;
	var scaleWidth = guiWidth / surfaceWidth;
	var scaleHeight = guiHeight / surfaceHeight;

	if surface_exists(gaussianSurface)  {
	    var gaussianSurfaceWidth = surface_get_width(gaussianSurface);
	    var gaussianSurfaceHeight = surface_get_height(gaussianSurface);
    
	    if (gaussianSurfaceWidth != surfaceWidth) or (gaussianSurfaceHeight != surfaceHeight)   {
	        surface_free(gaussianSurface);
	        gaussianSurface = surface_create_clear(surfaceWidth, surfaceHeight);
	    }

	    surface_set_target(gaussianSurface);
	    draw_clear_alpha(c_black, 0);
	    shader_set(shdGaussian);
	    shader_set_uniform_f(uniformGaussianSize, 256, 256, gaussianRadius);
	    draw_surface_ext(application_surface, 0, 0, 1, 1, 0, c_white, 1);
	    surface_reset_target();
	    shader_reset();
    
	    //Copy Surface
	    surface_copy(application_surface, 0, 0, gaussianSurface);
    
	    //Normal Vignette Effects
	    shader_set(shdVignetteNoise);
	    shader_set_uniform_f(uniformVignetteSettings, vignetteIntensityInnerSetting, vignetteIntensityOuterSetting, vignetteIntensityNoiseSetting, vignetteIntensityNoiseEnabledSetting);
	    shader_set_uniform_f(uniformVignetteColours, 210, 215, 220);
	    shader_set_uniform_f(uniformVignetteSeed, irandom(2048));
	    shader_set_uniform_f(uniformVignetteGrayscale, clamp(g.renderGrayscale, 0, 1));
	    draw_surface_ext(application_surface, 0, 0, scaleWidth, scaleHeight, 0, c_white, 1);
	    shader_reset();
	}   else    {
	    gaussianSurface = surface_create_clear(surfaceWidth, surfaceHeight);
	}



}
