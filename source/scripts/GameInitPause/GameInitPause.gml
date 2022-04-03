/// @description GameInitPause();
function GameInitPause() {

	pauseMenuTrigger = false;
	inputPause = false;
	inputPauseLast = false;

	pauseInstancesList = ds_list_create();
	pauseEnabled = false;
	pauseTick = 0;
	pauseTickMax = 5;

	//https://www.shadertoy.com/view/4lB3Dc
	pauseUniformResolution = shader_get_uniform(shdVCR, "iResolution"); 
	pauseUniformTime = shader_get_uniform(shdVCR, "iGlobalTime");
	pauseUniformIntensity = shader_get_uniform(shdVCR, "fIntensity");
	pauseUniformIntensityAmount = 0;

	//Pause Menu
	pauseMenuArray[0, 0] = "PAUSED";
	pauseMenuArray[0, 1] = "CONTINUE";
	pauseMenuArray[0, 2] = "QUIT";
	pauseMenuArray[1, 0] = "ARE YOU#SURE?";
	pauseMenuArray[1, 1] = "YES";
	pauseMenuArray[1, 2] = "NO";
	pauseMenuIndex = 0;
	pauseMenuSelected = 1;



}
