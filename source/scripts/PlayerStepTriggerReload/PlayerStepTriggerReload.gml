/// @description PlayerStepTriggerReload();
function PlayerStepTriggerReload() {

	if inputReload  {
	    if (WeaponReturnStat("weaponType") == "Gun") {
	        if (weaponAmmoReserve[weaponSelected] > 0)  {
	            if (weaponAmmo[weaponSelected] < WeaponReturnStat("gunReloadClip")) {
	                PlayerExecuteReload();
	            }
	        }
	    }
	}



}
