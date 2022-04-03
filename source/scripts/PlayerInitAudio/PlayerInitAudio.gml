/// @description PlayerInitAudio();
function PlayerInitAudio() {

	if g.settingWeb
	    exit;

	audioListenerPosX = mean(__view_get( e__VW.XView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ));
	audioListenerPosY = mean(__view_get( e__VW.YView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ));

	audio_listener_set_velocity(0, 0, 0, 0);
	audio_listener_set_orientation(0, 0, 1, 0, 0, 0, 1);
	audio_listener_position(__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 ) / 2), __view_get( e__VW.YView, 0 ) + (__view_get( e__VW.HView, 0 ) / 2), 0);
	audio_falloff_set_model(audio_falloff_exponent_distance);

	audioListenerPosLastX = audioListenerPosX;
	audioListenerPosLastY = audioListenerPosY;



}
