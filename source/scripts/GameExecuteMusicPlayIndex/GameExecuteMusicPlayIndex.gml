/// @description GameExecuteMusicPlayIndex(index);
/// @param index
function GameExecuteMusicPlayIndex() {

	var _inAudio = argument[0];

	with (objGame)  {
	    ds_grid_resize(musicGrid, ds_grid_width(musicGrid), ds_grid_height(musicGrid) + 1);
	    ds_grid_translate(musicGrid, 0, 1);
    
	    var _audioIndex = audio_play_sound(_inAudio, 20, true);
	    audio_sound_gain(_audioIndex, 0, 0);
	    musicGrid[# 0, 0] = _audioIndex;
	    musicGrid[# 1, 0] = 0;
	}
    



}
