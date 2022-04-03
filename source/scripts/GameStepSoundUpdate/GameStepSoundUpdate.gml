/// @description GameStepSoundUpdate();
function GameStepSoundUpdate() {

	//Update Sounds
	for (var i = 0; i < gridSoundsHeight; i ++) {
	    var _soundID = gridSounds[# 0, i];
	    var _soundPitch = gridSounds[# 1, i];
    
	    //Remove if Not Playing, Loop Back Through
	    if !audio_is_playing(_soundID)  {
	        ds_grid_delete_row(gridSounds, i);
	        gridSoundsHeight --;
	        i = 0;
	        continue;
	    }
    
	    //Pitch Sound if Applicable
	    if (_soundPitch != -1)  {
	        audio_sound_pitch(_soundID, _soundPitch * GameReturnMusicPitch());
	    }
	}



}
