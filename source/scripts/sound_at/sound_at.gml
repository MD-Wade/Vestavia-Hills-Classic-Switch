/// @description sound_at(index, x, y, distance, loops, [pitch], [gain]);
/// @param index
/// @param  x
/// @param  y
/// @param  distance
/// @param  loops
/// @param  [pitch]
/// @param  [gain]
function sound_at() {

	var _Sound = argument[0];
	var _soundX = argument[1];
	var _soundY = argument[2];
	var _soundDistance = argument[3];
	var _soundLoops = argument[4];
	var _soundNormal = g.settingWeb;
	switch (argument_count) {
	    case 6:
	        var _soundPitch = argument[5];
	        var _soundGain = 1.0;
	        break;
        
	    case 7:
	        var _soundPitch = argument[5];
	        var _soundGain = argument[6];
	        break;
	}
    
	if _soundNormal
	    var _idSound = audio_play_sound(_Sound, 0, _soundLoops);
	else
	    var _idSound = audio_play_sound_at(_Sound, _soundX, _soundY, 0, _soundDistance * 0.5, _soundDistance, 1, _soundLoops, 0);

	audio_sound_pitch(_idSound, _soundPitch * GameReturnMusicPitch());
	audio_sound_gain(_idSound, _soundGain * (g.settingVolumeSound / 100), 0);
	GameExecuteSoundAdd(_idSound, _soundPitch);
	return _idSound;



}
