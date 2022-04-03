/// @description WeaponReturnRandomMelee();
function WeaponReturnRandomMelee() {

	var _Array;

	return g.listWeaponsMelee[| irandom(ds_list_size(g.listWeaponsMelee) - 1)];



}
