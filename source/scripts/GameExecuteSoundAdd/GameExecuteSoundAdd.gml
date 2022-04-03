/// @description GameExecuteSoundAdd(id, pitch);
/// @param id
/// @param  pitch
function GameExecuteSoundAdd() {

	with (objGame)  {
	    var _soundID = argument[0];
	    var _soundPitch = argument[1];
    
	    gridSoundsHeight ++;
	    ds_grid_resize(gridSounds, gridSoundsWidth, gridSoundsHeight);
    
	    gridSounds[# 0, gridSoundsHeight - 1] = _soundID;
	    gridSounds[# 1, gridSoundsHeight - 1] = _soundPitch;
	}



}
