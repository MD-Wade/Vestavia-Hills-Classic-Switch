/// @description GameInitMusic();
function GameInitMusic() {

	musicGrid = ds_grid_create(2, 1);
	musicFadeLength = fs(1.25);

	musicGameList = ds_list_create();
	ds_list_add(musicGameList, bgmMoment);
	ds_list_add(musicGameList, bgmRisky);
	ds_list_add(musicGameList, bgmUrban);
	ds_list_add(musicGameList, bgmCall);
	ds_list_add(musicGameList, bgmDeath);
	musicGamePlayedList = ds_list_create();

	//Play Menu Music
	//GameExecuteMusicPlayIndex(bgmGuilty);



}
