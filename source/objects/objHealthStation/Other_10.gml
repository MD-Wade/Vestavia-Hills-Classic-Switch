/// @description Interact

if (hStationCharge > 0) {
    var _healthDifference = GameReturnActorStat("healthMax", userID) - GameReturnActorStat("Health", userID);
    if (_healthDifference > 0) {
        var _hStationAmount = min(hStationCharge, _healthDifference, hStationUseRate);
        g.gameShowArrowHealth = false;
        colourBlendUse = 1.0;
        hStationCharge = approach(hStationCharge, 0, _hStationAmount);
        GameExecuteActorStatSet("Health", approach(GameReturnActorStat("Health", userID), GameReturnActorStat("healthMax", userID), _hStationAmount), userID);
        GameExecuteDamageNumberCreate(x, y, _hStationAmount, 2);
        sound_here(sndHealthStationUse, soundDistance, false);
    }   else    {
        sound_here(sndUIInvalid, soundDistance, false);
        colourBlendInvalid = 1.0;
    }
}   else    {
    var _userCash = GameReturnActorStat("cashAmount", userID);
    if (_userCash >= hStationCost)  {
        GameExecuteActorStatAdd("cashAmount", hStationCost * -1, userID);
        sound_here(sndHealthStationRecharge, soundDistance, false);
        hStationCharge = hStationChargeMax;
        hStationCost += hStationCostIncrement;
        colourBlendRecharge = 1.0;
    }   else    {
        sound_here(sndUIInvalid, soundDistance, false);
        colourBlendInvalid = 1.0;
    }
}

