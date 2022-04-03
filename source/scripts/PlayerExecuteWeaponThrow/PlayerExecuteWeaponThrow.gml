/// @description PlayerExecuteWeaponThrow(index, [instance]);
/// @param index
/// @param  [instance]
function PlayerExecuteWeaponThrow() {

	var _inIndex = argument[0];
	var _inInstance = id;
	var _inVelocity = 4;
	var _inDirection  = 0;

	if (argument_count > 1) {
	    var _inInstance = argument[1];
	}

	//Create Instance and Reset Slot
	with (_inInstance)  {
	    if weaponCurrent[_inIndex] != "Unarmed"   {
	        weaponSelected = _inIndex;
	        PlayerExecuteWeaponUpdate();
        
	        _inDirection = animAngle;
	        GameExecuteWeaponCreate(x, y, weaponCurrent[weaponSelected], _inVelocity, _inDirection, weaponAmmo[weaponSelected], weaponAmmoReserve[weaponSelected]);
	        PlayerExecuteWeaponSet(_inIndex, "Unarmed");
	        sound_here(choose(sndMeleeSwing1, sndMeleeSwing2, sndMeleeSwing3), 92, false);
	    }
	}



}
