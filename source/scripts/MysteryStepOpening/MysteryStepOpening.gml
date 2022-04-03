/// @description MysteryStepOpening();
function MysteryStepOpening() {

	image_index = approach(image_index, image_number - 1, g.gameTimescale * animSpeed);
	mysteryTick = approach(mysteryTick, mysteryTickMax, g.gameTimescale);
	mysteryTickRandom = approach(mysteryTickRandom, mysteryTickRandomMax, g.gameTimescale);

	//Weapon Alpha
	if (image_index >= (image_number - 1))  {
	    weaponAnimAlpha = approach(weaponAnimAlpha, 1, g.gameTimescale * 0.25);
	}

	//Switch States
	if (mysteryTick >= mysteryTickMax)  {
	    if audio_is_playing(soundIndexCurrent)
	        audio_stop_sound(soundIndexCurrent);
        
	    soundIndexCurrent = sound_here(soundIndexFinish, soundDistance, false, 1);
	    stateCurrent = MYSTERY_STATES.Item;
	    mysteryTick = 0;
	}

	//Switch States
	if (mysteryTickRandom >= mysteryTickRandomMax)  {
	    var _weaponInvalid = true;
    
	    while _weaponInvalid    {
	        if chance(mysteryGunChance)
	            weaponIndex = WeaponReturnRandomGun();
	        else
	            weaponIndex = WeaponReturnRandomMelee();
            
	        _weaponInvalid = (ds_list_find_index(g.listWeaponsMysteryInvalid, weaponIndex) != -1)
	    }

	    weaponAnimIndex = WeaponReturnFrame(weaponIndex);
	    mysteryTickRandom = 0;
	}



}
