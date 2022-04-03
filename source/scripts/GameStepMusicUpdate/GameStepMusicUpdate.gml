/// @description GameStepMusic();
function GameStepMusicUpdate() {

	//Update
	musicPitch = lerp(0, lerp(0.15, 1, (g.gameTimescale / g.gameTimescaleBase)), (1 - pauseUniformIntensityAmount));
	//Clear Stopped Music
	for (var i = 0; i < ds_grid_height(musicGrid) - 1; i ++)    {
	    var _musicIndex = musicGrid[# 0, i];
	    if !audio_is_playing(_musicIndex)   {
	        ds_grid_delete_row(musicGrid, i);
	        i = 0;
	    }
	}

	//Audio Fading
	musicGrid[# 1, 0] = approach(musicGrid[# 1, 0], musicFadeLength * (g.settingVolumeMusic / 100), 1);
	audio_sound_gain(musicGrid[# 0, 0], musicGrid[# 1, 0] / musicFadeLength, 0);
	audio_sound_pitch(musicGrid[# 0, 0], musicPitch);

	//Fade Out Tracks
	for (var i = 1; i < ds_grid_height(musicGrid) - 1; i ++)    {
	    var _musicIndex = musicGrid[# 0, i];
	        if audio_is_playing(_musicIndex)    {
	        musicGrid[# 1, i] = approach(musicGrid[# 1, i], 0, 1);
	        audio_sound_gain(_musicIndex, musicGrid[# 1, i] / musicFadeLength, 0);
	        audio_sound_pitch(_musicIndex, lerp(0.15, 1, musicPitch));
        
	        if musicGrid[# 1, i] <= 0   {
	            audio_stop_sound(_musicIndex);
	            ds_grid_delete_row(musicGrid, i);
	        }
	    }   else    {
	        ds_grid_delete_row(musicGrid, i);
	    }
	}

	//Play New Tracks




}
