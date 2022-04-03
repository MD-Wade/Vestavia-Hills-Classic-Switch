/// @description PlayerStepPickup();
function PlayerStepPickup() {

	var _itemPickup = false;

	//Determine Object
	with (parPickup)    {
	    if pickupReady and !pickupPerformed  {
	        if (distance_to_object(other) < (other.itemPickupRange))    {
	            userID = other.id;
	            switch (object_index)   {
	                case objCash:
	                    GameExecuteActorStatAdd("cashAmount", cashValue, userID);
	                    _itemPickup = true;
	                    pickupPerformed = true;
	                break;
                    
	                case objAmmo:
	                    //Update Weapon
	                    with (userID)   {
	                        var _userWeapon = weaponCurrent[weaponSelected];
	                    }

	                    //Only Pickup if Gun and Has Less Ammo
	                    if (WeaponReturnStat("weaponType", _userWeapon) == "Gun")   {
	                        if (userID.weaponAmmoReserve[userID.weaponSelected] < WeaponReturnStat("gunReloadReserve", _userWeapon)) {
	                            _itemPickup = true;
	                            pickupPerformed = true;
	                            GameExecuteAmmoAdd(userID, ceil(WeaponReturnStat("gunReloadReserve", _userWeapon) * 0.2))
	                        }
	                    }
	                break;
	            }
	        }
	    }
	}

	//Play Sound
	if _itemPickup
	    sound_here(choose(sndPickup1, sndPickup2, sndPickup3), 192, false, rr(0.95, 1.05));



}
