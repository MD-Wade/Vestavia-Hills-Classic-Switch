/// @description PlayerInitGUI();
function PlayerInitGUI() {

	guiWidth = 0;
	guiHeight = 0;
	guiBorder = 8;
	guiScale = 2;
	guiEnabled = true;
	guiMessageString = "ERR";
	guiMessageAlpha = 0;
	guiAlpha = 0;

	guiCriticalTick = 0;
	guiCriticalTickMax = fs(0.2);
	guiCriticalAlpha = 0;
	guiCriticalAlphaMax = 0.5;

	guiStaminaFlicker = 0;

	if g.settingPlayerCount > 1
	    guiMessageDeath = "YOU DIED!#WAIT TO BE REVIVED";
	else
	    guiMessageDeath = "YOU DIED!#PRESS 'A' TO RESTART";



}
