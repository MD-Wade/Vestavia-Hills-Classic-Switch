/// @description PlayerReturnCalculationAttackSpeed();
function PlayerReturnCalculationAttackSpeed() {

	var _outputValue;
	_outputValue = 1;

	if PlayerReturnStatusEffect("Buzzed")   {
	    if (WeaponReturnStat("weaponType") == "Melee")  {
	        _outputValue += 0.4;
	    }
	}

	return _outputValue;



}
