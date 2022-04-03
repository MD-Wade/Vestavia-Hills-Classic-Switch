/// @description GoreExecuteSound(sound, [pitch], [gain], [distance]);
/// @param sound
/// @param  [pitch]
/// @param  [gain]
/// @param  [distance]
function GoreExecuteSound() {

	var _soundIndex = argument[0];
	var _soundPitch = 1.0;
	var _soundGain = 1.0;
	var _soundDistance = 192;
	var _soundKill = false;

	//Custom Parameters
	if (argument_count > 1)
	    _soundPitch = argument[1];
	if (argument_count > 2)
	    _soundGain = argument[2];
	if (argument_count > 3)
	    _soundDistance = argument[3];
	if (argument_count > 4)
	    _soundKill = argument[4];

	//Play Sound
	var _soundNew = sound_here(_soundIndex, _soundDistance, false, _soundPitch, _soundGain);
	with (objGame)  {
	    if _soundKill   {
	        if audio_is_playing(soundGoreIndex)
	            audio_stop_sound(soundGoreIndex);
	        soundGoreIndex = _soundNew;
	    }   else    {
	        if audio_is_playing(soundGoreKillIndex)
	            audio_stop_sound(soundGoreKillIndex);
	        soundGoreKillIndex = _soundNew;
	    }
	}



}
