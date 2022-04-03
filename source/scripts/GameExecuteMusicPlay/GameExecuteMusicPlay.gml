/// @description GameExecuteMusicPlay();
function GameExecuteMusicPlay() {

	with (objGame)  {
	    var _idChosen = musicGameList[| irandom(ds_list_size(musicGameList) - 1)];
	    if (ds_list_size(musicGamePlayedList) >= (ds_list_size(musicGameList))) {
	        ds_list_clear(musicGamePlayedList);
	    }
    
	    //Keep Searching for a Random Track
	    while (ds_list_find_index(musicGamePlayedList, _idChosen) != -1) {
	        _idChosen = musicGameList[| irandom(ds_list_size(musicGameList) - 1)];
	    }
    
	    GameExecuteMusicPlayIndex(_idChosen);
	}



}
