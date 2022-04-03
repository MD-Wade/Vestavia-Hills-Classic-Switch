/// @description PlayerReturnCalculationCritical();
function PlayerReturnCalculationCritical() {

	var _baseChance;
	_baseChance = 0;

	//Base Chance
	switch (WeaponReturnStat("weaponType"))  {
	    case "Gun":
	        _baseChance = GameReturnActorStat("criticalChanceGun");
	    break;
    
	    case "Melee":
	        _baseChance = GameReturnActorStat("criticalChanceMelee");
	    break;
	}

	//Status Effects
	if PlayerReturnStatusEffect("Buzzed")   {
	    switch (WeaponReturnStat("weaponType")) {
	        case "Melee":
	            _baseChance += 0.35;
	        break;
	    }
	}

	//Finalize
	return clamp(_baseChance, 0, 1);



}
