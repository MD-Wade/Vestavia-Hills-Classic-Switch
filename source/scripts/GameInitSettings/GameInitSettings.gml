/// @description GameInitSettings();
function GameInitSettings() {

	g.settingGore = true;
	g.settingEnemyHealthbars = true;
	g.settingDamageNumbers = true;
	g.settingBackground = true;
	g.settingDebugMode = true;

	g.settingLightingQuality = 0;
	g.settingNoiseIntensity = 1;
	g.settingVignetteIntensity = 0;
	g.settingResolutionScale = 1;

	g.settingVolumeMusic = 100;
	g.settingVolumeSound = 100;

	g.gameDifficulty = 1;
	g.gameTimescale = 1;
	g.gameShowArrowMystery = true;
	g.gameShowArrowHealth = true;

	g.settingPlayerCount = 1;

	g.settingWeb = os_browser != browser_not_a_browser;
	g.settingBackground = !g.settingWeb;

	//Web Specific Settings
	if g.settingWeb {
	    g.settingLightQuality = 0;
	}

	//Apply
	surface_resize(application_surface, 1920 * g.settingResolutionScale, 1080 * g.settingResolutionScale);



}
