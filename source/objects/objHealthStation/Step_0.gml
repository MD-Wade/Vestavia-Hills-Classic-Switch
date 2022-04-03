/// @description Update

if (hStationCharge > 0) {
    interactionMessage = "[RMB] TO HEAL - (" + string(hStationCharge) + ") REMAINING";
}   else    {
    interactionMessage = "[RMB] [$" + string(hStationCost) + "] TO RECHARGE";
}

