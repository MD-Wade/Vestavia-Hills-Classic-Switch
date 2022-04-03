/// @description PlayerInitWeapons();
function PlayerInitWeapons() {

	//Collision Array
	attackCollisionX[0] = x;
	attackCollisionY[0] = y;
	attackCollisionX[1] = x;
	attackCollisionY[1] = y;
	attackCollisionX[2] = x;
	attackCollisionY[2] = y;

	//Animation
	weaponAnimated = false;

	//Reloading
	weaponReloadTick = 0;
	weaponAmmoReserve = 0;
	weaponReloadTickInterp = 0;

	//Update
	switch (g.gameDifficulty)    {
	    case 0:
	    case 1:
	        weaponSlots = 3;
	        break;
	    default:
	        weaponSlots = 2;
	        break;
	}

	//Set Index
	weaponSelected = 0;

	//Blank Slots
	for (var i = 0; i < weaponSlots; i ++)  {
	    PlayerExecuteWeaponSet(i, "Unarmed");
	}

	//Give Weapon on Easier Difficulties
	if (g.gameDifficulty <= 1)  {
	    PlayerExecuteWeaponSet(1, "SilencedPistol", id, 1, 1);
	}

	//Give Cigarette
	var _posCigarette = weaponSlots - 1;
	PlayerExecuteWeaponSet(_posCigarette, "Cigarette");
	PlayerExecuteWeaponSet(0, "Unarmed");



}
