/// @description sound(index, [pitch], [gain]);
/// @param index
/// @param  [pitch]
/// @param  [gain]
function sound() {

	var _soundIndex = argument[0];
	var _soundPitch = 1.0;
	var _soundGain = 1.0;

	if (argument_count > 1)
	    _soundPitch = argument[1];
	if (argument_count > 2)
	    _soundGain = argument[2];
    
	var _idSound = audio_play_sound(_soundIndex, 1, 0);

	audio_sound_pitch(_idSound, _soundPitch * GameReturnMusicPitch());
	audio_sound_gain(_idSound, _soundGain * (g.settingVolumeSound / 100), 0);
	GameExecuteSoundAdd(_idSound, _soundPitch);
	return _idSound;



}
