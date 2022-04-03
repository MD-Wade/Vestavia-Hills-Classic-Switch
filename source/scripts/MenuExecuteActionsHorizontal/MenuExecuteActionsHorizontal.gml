/// @description MenuExecuteActionsHorizontal(delta_h);
/// @param delta_h
function MenuExecuteActionsHorizontal() {

	var _inputDeltaH = argument[0];

	if (abs(_inputDeltaH) != 0) {
	    switch (menuIndex)  {
	        case MENU_TYPES.MISCELLAENOUS_OPTIONS:
	            switch (menuSelected)   {
	                case 0: //BLOOD & GORE
	                    g.settingGore = !g.settingGore;
	                    menuArray[MENU_TYPES.MISCELLAENOUS_OPTIONS, 0] = "BLOOD & GORE: " + return_toggle(g.settingGore);
	                break;
	            }
	        break;
        
	        case MENU_TYPES.VIDEO_OPTIONS:
	            switch (menuSelected)   {
	                case 0: //Lighting Quality
	                    g.settingLightingQuality = wrap(g.settingLightingQuality + _inputDeltaH, 0, 3);
	                    menuArray[MENU_TYPES.VIDEO_OPTIONS, 0] = "LIGHTING QUALITY: " + MenuReturnQuality(g.settingLightingQuality, 3);
	                break;
    
	                case 1: //Vignette
	                    g.settingVignetteIntensity = wrap(g.settingVignetteIntensity + _inputDeltaH, 0, 3);
	                    menuArray[MENU_TYPES.VIDEO_OPTIONS, 1] = "VIGNETTE: " + MenuReturnIntensity(g.settingVignetteIntensity, 3);
	                break;
    
	                case 2: //Noise
	                    g.settingNoiseIntensity = wrap(g.settingNoiseIntensity + _inputDeltaH, 0, 3);
	                    menuArray[MENU_TYPES.VIDEO_OPTIONS, 2] = "FILM GRAIN: " + MenuReturnIntensity(g.settingNoiseIntensity, 3);
	                break;

	                case 3: //Fullscreen
	                    if g.settingWeb {
	                        menuArray[MENU_TYPES.VIDEO_OPTIONS, 3] = "FULLSCREEN: UNAVAILABLE ON WEB";
	                    }   else    {
	                        window_set_fullscreen(!window_get_fullscreen());
	                        menuArray[MENU_TYPES.VIDEO_OPTIONS, 3] = "FULLSCREEN: " + return_toggle(window_get_fullscreen());
	                    }
	                break;
                
	                case 4: //Back
	                    menuIndex = MENU_TYPES.OPTIONS;
	                    menuSelected = 0;
	                break;
	            }
	        break;
        
	        case MENU_TYPES.AUDIO_OPTIONS:
	            switch (menuSelected)   {
	                case 0: //Music Volume
	                    g.settingVolumeMusic = (g.settingVolumeMusic + (_inputDeltaH * 10));
	                    if (g.settingVolumeMusic > 100)
	                        g.settingVolumeMusic = 0;
	                    if (g.settingVolumeMusic < 0)
	                        g.settingVolumeMusic = 100;
	                    menuArray[MENU_TYPES.AUDIO_OPTIONS, 0] = "MUSIC VOLUME: " + string(g.settingVolumeMusic) + "%";
	                break;
    
	                case 1: //Sound Volume
	                    g.settingVolumeSound = (g.settingVolumeSound + (_inputDeltaH * 10));
	                    if (g.settingVolumeSound > 100)
	                        g.settingVolumeSound = 0;
	                    if (g.settingVolumeSound < 0)
	                        g.settingVolumeSound = 100;
	                    menuArray[MENU_TYPES.AUDIO_OPTIONS, 1] = "SOUND VOLUME: " + string(g.settingVolumeSound) + "%";
	                break;
                
	                case 4: //Back
	                    menuIndex = MENU_TYPES.OPTIONS;
	                    menuSelected = 1;
	                break;
	            }
	        break;
        
	        case MENU_TYPES.PLAY:
	            switch (menuSelected)   {
	                case 1: //Difficulty
	                    MenuExecuteDifficulty(_inputDeltaH);
	                break;
	            }
	        break;
	    }
	}



}
