/// @description PlayerStepWeaponSwap();
function PlayerStepWeaponSwap() {

	var _weaponDelta = (inputWeaponPositive - inputWeaponNegative);
	var _inputPerformed = (_weaponDelta != 0);
	weaponSelected = wrap(weaponSelected + _weaponDelta, 0, weaponSlots);

	//Keyboard Selection
	if playerInputScheme == PLAYER_INPUT_SCHEMES.Keyboard   {
	    for (var i = 1; i < (weaponSlots + 1); i ++)  {
	        if keyboard_check_pressed(ord(string(i)))   {
	            weaponSelected = (i - 1);
	            var _inputPerformed = true;
	        }
	    }
	}

	//Weapon Drop
	if inputDrop    {
	    PlayerExecuteWeaponThrow(weaponSelected);
	}

	//Play Sound and Update
	if _inputPerformed {
	    switch (WeaponReturnStat("weaponType"))  {
	        case "Gun":
	            sound_here(sndWeaponPickup, 96, false, rr(0.99, 1.0));
	            break;
            
	        default:
	            sound_here(choose(sndMeleeSwing1, sndMeleeSwing2, sndMeleeSwing3), 96, false, rr(0.96, 1.0));
	            break;
	    }

	    PlayerExecuteWeaponUpdate();
	}



}
