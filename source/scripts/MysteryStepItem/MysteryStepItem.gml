/// @description MysteryStepItem();
function MysteryStepItem() {

	weaponAnimAlpha = 1;

	mysteryTickPresent = approach(mysteryTickPresent, mysteryTickPresentMax, g.gameTimescale);
	if (mysteryTickPresent >= mysteryTickPresentMax)    {
	    userID = noone;
	    event_user(0);
	}



}
