/// @description ShadersDrawStandard();
function ShadersDrawStandard() {

	var guiWidth = display_get_gui_width();
	var guiHeight = display_get_gui_height();
	var surfaceWidth = surface_get_width(application_surface);
	var surfaceHeight = surface_get_height(application_surface);
	var scaleWidth = guiWidth / surfaceWidth;
	var scaleHeight = guiHeight / surfaceHeight;

	shader_set(shdVignetteNoise);
	shader_set_uniform_f(uniformVignetteSettings, vignetteIntensityInnerSetting, vignetteIntensityOuterSetting, vignetteIntensityNoiseSetting, vignetteIntensityNoiseEnabledSetting);
	shader_set_uniform_f(uniformVignetteColours, 210, 215, 220);
	shader_set_uniform_f(uniformVignetteSeed, irandom(2048));
	shader_set_uniform_f(uniformVignetteGrayscale, clamp(g.renderGrayscale, 0, 1));
	draw_surface_ext(application_surface, 0, 0, scaleWidth, scaleHeight, 0, c_white, 1);
	shader_reset();



}
