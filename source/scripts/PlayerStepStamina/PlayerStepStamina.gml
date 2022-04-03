/// @description PlayerStepStamina();
function PlayerStepStamina() {

	statsStaminaTick = approach(statsStaminaTick, statsStaminaTickMax, g.gameTimescale);
	if (statsStaminaTick >= statsStaminaTickMax)    {
	    statsStaminaRate = approach(statsStaminaRate, statsStaminaRateMax, statsStaminaRateIncrease * movementFactorTotal);
	    GameExecuteActorStatSet("Stamina", approach(GameReturnActorStat("Stamina"), GameReturnActorStat("staminaMax"), statsStaminaRate * movementFactorTotal));
	}   else    {
	    statsStaminaRate = 0;
	}



}
