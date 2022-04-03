/// @description MenuExecuteActions();
function MenuExecuteActions() {

	switch (menuIndex)  {
	    case MENU_TYPES.MAIN: //Main Menu
	        switch (menuSelected)   {
	            case 0: //Play
	                menuIndex = MENU_TYPES.PLAY;
	                menuSelected = 2;
	            break;
            
	            case 1: //Options
	                menuIndex = MENU_TYPES.OPTIONS;
	                menuSelected = 2;
	            break;
            
	            case 2: //Credits
	                creditsFinished = false;
	                creditsOffsetY = creditsOffsetYMax;
	                fadeAction = MENU_FADE_ACTIONS.Credits;
	                fadeDirection = true;
	                stateCurrent = MENU_STATES.Fade;
	                GameExecuteMusicPlayIndex(bgmWelcome);
	            break;      
	        }
	    break;
    
	    case MENU_TYPES.PLAY:
	        switch (menuSelected)   {
	            case 0: //Play
	                with (objGame)  {
	                    event_user(0);
	                }
	            break;
            
	            case 1: //Difficulty
	                MenuExecuteDifficulty(1);
	            break;
            
	            case 2: //Back
	                menuIndex = MENU_TYPES.MAIN;
	                menuSelected = 0;
	            break;
	    }
	    break;
    
	    case MENU_TYPES.OPTIONS:
	        switch (menuSelected)   {
            
	            case 0: //Audio Options
	                menuIndex = MENU_TYPES.AUDIO_OPTIONS;
	                menuSelected = 2;
	            break;
            
	            case 1: //Miscellaneous Options
	                menuIndex = MENU_TYPES.MISCELLAENOUS_OPTIONS;
	                menuSelected = 0;
	            break;
            
	            case 2: //Back
	                menuIndex = MENU_TYPES.MAIN;
	                menuSelected = 1;
	            break;
	        }
	    break;
    
	    case MENU_TYPES.AUDIO_OPTIONS:
	        switch (menuSelected)   {    
	            case 0: //Music Volume
	            case 1: //Sound Volume
	                MenuExecuteActionsHorizontal(1);
	            break;    
	            case 2: //Back
	                menuIndex = MENU_TYPES.OPTIONS;
	                menuSelected = 1;
	            break;
	        }
	    break;
        
	    case MENU_TYPES.VIDEO_OPTIONS:
	        switch (menuSelected)   {
	            case 0: //Lighting Quality
	            case 1: //Vignette
	            case 2: //Lighting Quality
	            case 3: //Fullscreen
	                MenuExecuteActionsHorizontal(1);
	            break;
            
	            case 4: //Back
	                menuIndex = MENU_TYPES.MAIN;
	                menuSelected = 0;
	            break;
	        }
	    break;
        
	    case MENU_TYPES.MISCELLAENOUS_OPTIONS:
	        switch (menuSelected)   {
	            case 0: //Blood & Gore
	                MenuExecuteActionsHorizontal(1);
	            break;
            
	            case 1: //Back
	                menuIndex = MENU_TYPES.OPTIONS;
	                menuSelected = 1;
	            break;
	        }
	    break;
	}



}
