/// @description PlayerStepReload();
function PlayerStepReload() {

	//Legs
	animSpeed = (movementSpeedFactor * animSpeedMax);
	if animSpeed > 0    {
	    animFrameLegs += animSpeed;
	}   else    {
	    animFrameLegs = 0;
	}

	//Determine if Skip Shell Loading
	if (WeaponReturnStat("gunReloadType") == "Single") {
	    if (inputAttackPress) or
	    (weaponAmmo[weaponSelected] >= (WeaponReturnStat("gunReloadClip") - 1)) or
	    (weaponAmmoReserve[weaponSelected] <= 1) {
	        weaponEndReload = true;
	    }
	}

	//Main
	weaponReloadTick = approach(weaponReloadTick, fs(WeaponReturnStat("gunReloadTime")), movementFactorTotal * g.gameTimescale);
	weaponReloadTickInterp = (weaponReloadTick / fs(WeaponReturnStat("gunReloadTime")));
	animFrame = sprite_get_number(animSprite) * weaponReloadTickInterp;

	//Finish Reloading?
	if (weaponReloadTickInterp >= 1)    {
	    switch WeaponReturnStat("gunReloadType") {
	        case "Clip":
	            var _reloadAmmoAmount = min(weaponAmmoReserve[weaponSelected], WeaponReturnStat("gunReloadClip") - weaponAmmo[weaponSelected]);
	            weaponAmmoReserve[weaponSelected] = approach(weaponAmmoReserve[weaponSelected], 0, _reloadAmmoAmount);
	            weaponAmmo[weaponSelected] = approach(weaponAmmo[weaponSelected], WeaponReturnStat("gunReloadClip"), _reloadAmmoAmount);
	            stateCurrent = PSTATES.Walk;
	            animSprite = PlayerReturnSpriteWalk();
	            break;
            
	        case "Single":
	            var _reloadAmmoAmount = 1;
	            weaponReloadTick = 0;
	            weaponAmmoReserve[weaponSelected] = approach(weaponAmmoReserve[weaponSelected], 0, _reloadAmmoAmount);
	            weaponAmmo[weaponSelected] = approach(weaponAmmo[weaponSelected], WeaponReturnStat("gunReloadClip"), 1);

	            //End Reloading
	            if weaponEndReload  {
	                weaponEndReload = false;
	                stateCurrent = PSTATES.Walk;
	                animSprite = PlayerReturnSpriteWalk();
	            }   else    {
	                sound_here(sndWeaponReload, 192, false, rr(0.98, 1.0));
	            }

	            break;
	    }
	}



}
