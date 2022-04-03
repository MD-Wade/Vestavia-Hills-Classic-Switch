/// @description WeaponReturnRandomGun();
function WeaponReturnRandomGun() {

	return g.listWeaponsGun[| irandom(ds_list_size(g.listWeaponsGun) - 1)];



}
