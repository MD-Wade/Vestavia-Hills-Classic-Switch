/// @description PlayerInitStats();
function PlayerInitStats() {

	//Base Stats
	GameExecuteActorStatSet("healthMax", 100);
	GameExecuteActorStatSet("staminaMax", 100);
	GameExecuteActorStatSet("Health", GameReturnActorStat("healthMax"));
	GameExecuteActorStatSet("Stamina", GameReturnActorStat("staminaMax"));

	//Critical Values
	GameExecuteActorStatSet("criticalChanceMelee", 0.02);
	GameExecuteActorStatSet("criticalChanceGun", 0.05);
	GameExecuteActorStatSet("criticalFactorMin", 1.5);
	GameExecuteActorStatSet("criticalFactorMax", 3);

	//Cash
	GameExecuteActorStatSet("cashAmount", 0);

	//Interpolation for Smooth Bars
	statsLerpHealth = GameReturnActorStat("Health");
	statsLerpStamina = GameReturnActorStat("Stamina");

	//Stamina Regeneration
	statsStaminaTick = 0;
	statsStaminaTickMax = fs(0.25);
	statsStaminaRate = 0;
	statsStaminaRateMax = 1;
	statsStaminaRateIncrease = 0.025;



}
