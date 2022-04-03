/// @description PlayerExecuteCleanup();
function PlayerExecuteCleanup() {

	ds_map_destroy(mapStats);
	ds_list_destroy(interactionList);
	ds_list_destroy(interactionRangeList);
	ds_list_destroy(weaponMeleeCollisionsList);



}
