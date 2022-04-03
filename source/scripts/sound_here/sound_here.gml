/// @description sound_here(index, distance, loops, [pitch], [gain]);
/// @param index
/// @param  distance
/// @param  loops
/// @param  [pitch]
/// @param  [gain]
function sound_here() {

	var _Sound = argument[0];
	var _soundDistance = argument[1];
	var _soundLoops = argument[2];
	var _soundX = center_x();
	var _soundY = center_y();
	var _soundNormal = g.settingWeb;
	var _soundPitch = 1.0;
	var _soundGain = 1.0;

	if (argument_count > 3)
	    _soundPitch = argument[3];
	if (argument_count > 4)
	    _soundGain = argument[4];
    
	if _soundNormal {
	    var _idSound = sound(_Sound, _soundPitch, _soundGain);
	}   else    {
	    var _idSound = sound_at(_Sound, _soundX, _soundY, _soundDistance, _soundLoops, _soundPitch);
	}

	return _idSound;



}
