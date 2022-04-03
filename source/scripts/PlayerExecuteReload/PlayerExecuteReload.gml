/// @description PlayerExecuteReload();
function PlayerExecuteReload() {

	//Initialize Variables and Change State
	weaponReloadTick = 0;
	weaponReloadTickInterp = 0;
	weaponEndReload = false;
	stateCurrent = PSTATES.Reload;

	//Play Sound
	sound_here(sndWeaponReload, 192, false, rr(0.98, 1.0));

	//Update Weapon
	PlayerExecuteWeaponUpdate();



}
