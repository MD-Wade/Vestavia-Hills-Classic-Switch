/// @description GameInitInteractables();
function GameInitInteractables() {

	g.listInteractables = ds_list_create();
	ds_list_add(g.listInteractables, objLightSwitch);
	ds_list_add(g.listInteractables, objMysteryBox);
	ds_list_add(g.listInteractables, objHealthStation);
	ds_list_add(g.listInteractables, objBrokenWindow);
	ds_list_add(g.listInteractables, objWeapon);
	ds_list_add(g.listInteractables, parDoor);



}
