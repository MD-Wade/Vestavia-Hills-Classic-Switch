/// @description EnemyStepFadeIn();
function EnemyStepFadeIn() {

	alphaFallback = approach(alphaFallback, fs(2), 1);

	if (animAlpha < 1) or (alphaFallback < fs(2))    {
	    animAlpha = approach(animAlpha, 1, 0.02);
	}   else    {
	    stateCurrent = ESTATES.Walk;
	}




}
