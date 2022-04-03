/// @description MenuStateFade();
function MenuStateFade() {

	if fadeDirection    {
	    var _gaussianTarget = 16;
	}   else    {
	    var _gaussianTarget = 0;
	}

	//Update Fade
	gaussianRadius = approach(gaussianRadius, _gaussianTarget, 1);
	fadeComplete = (gaussianRadius == _gaussianTarget);

	//Finish Fading
	if (fadeComplete)   {
	    switch (fadeAction) {
	        case MENU_FADE_ACTIONS.Begin:
	            stateCurrent = MENU_STATES.Normal;
	            break;
	        case MENU_FADE_ACTIONS.Quit:
	            game_end();
	            break;
	        case MENU_FADE_ACTIONS.Credits:
	            stateCurrent = MENU_STATES.Credits;
	            break;
	        default:
	            stateCurrent = MENU_STATES.Normal;
	            break;
	    }
	}



}
