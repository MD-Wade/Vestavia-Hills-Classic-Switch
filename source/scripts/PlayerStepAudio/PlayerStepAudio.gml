/// @description PlayerStepAudio();
function PlayerStepAudio() {

	/*
	audioListenerPosX = mean(view_xview[0], view_xview[0] + view_wview[0]);
	audioListenerPosY = mean(view_yview[0], view_yview[0] + view_hview[0]);
	audio_listener_set_velocity(0, audioListenerPosX - audioListenerPosLastX, audioListenerPosY - audioListenerPosLastY, 0);
	audio_listener_position(audioListenerPosX, audioListenerPosY, 0);
	audioListenerPosLastX = audioListenerPosX;
	audioListenerPosLastY = audioListenerPosY;
	*/

	if g.settingWeb
	    exit;

	audioListenerPosX = x;
	audioListenerPosY = y;
	audio_listener_set_velocity(0, x - xprevious, y - yprevious, 0);
	audio_listener_position(audioListenerPosX, audioListenerPosY, 0);



}
