function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = -4000; // objGame
	global.__objectDepths[1] = -1500; // objLighting
	global.__objectDepths[2] = -3500; // objShaders
	global.__objectDepths[3] = 12; // objSurfaceParticles
	global.__objectDepths[4] = 5000; // objBackgroundEditor
	global.__objectDepths[5] = 5000; // objBackgroundGame
	global.__objectDepths[6] = 5000; // objBackgroundMenu
	global.__objectDepths[7] = 0; // objBackgroundSplatter
	global.__objectDepths[8] = -200; // objDamageNumber
	global.__objectDepths[9] = -6000; // objMessageSlowdown
	global.__objectDepths[10] = -2000; // objTransitionOut
	global.__objectDepths[11] = 1; // objGoreBrains
	global.__objectDepths[12] = 0; // objGoreDrop
	global.__objectDepths[13] = 0; // objGoreDrop2
	global.__objectDepths[14] = 1; // objGoreGuts
	global.__objectDepths[15] = 0; // objGoreSmoke
	global.__objectDepths[16] = 0; // objGoreSmoke2
	global.__objectDepths[17] = 2; // objGoreSplatter
	global.__objectDepths[18] = 2; // objGoreSplatter2
	global.__objectDepths[19] = 0; // objGoreSplatterBlunt
	global.__objectDepths[20] = 0; // objGoreSplatterCut
	global.__objectDepths[21] = 8; // objDebris
	global.__objectDepths[22] = 0; // objSlowdown
	global.__objectDepths[23] = 0; // objParticleStream
	global.__objectDepths[24] = 0; // objWeapon
	global.__objectDepths[25] = 0; // parActor
	global.__objectDepths[26] = 0; // parBuilding
	global.__objectDepths[27] = 0; // parDoor
	global.__objectDepths[28] = -10; // parEnemy
	global.__objectDepths[29] = 0; // parFurniture
	global.__objectDepths[30] = 0; // parGore
	global.__objectDepths[31] = 0; // parLight
	global.__objectDepths[32] = 0; // parPickup
	global.__objectDepths[33] = 0; // parSolid
	global.__objectDepths[34] = 0; // parSpawn
	global.__objectDepths[35] = 0; // parWall
	global.__objectDepths[36] = -3750; // objEditor
	global.__objectDepths[37] = -3900; // objEditorButton
	global.__objectDepths[38] = 0; // objEditorInstance
	global.__objectDepths[39] = 0; // objEditorSensor
	global.__objectDepths[40] = -3800; // objEditorTextbox
	global.__objectDepths[41] = 0; // objMenu
	global.__objectDepths[42] = 0; // objSplash
	global.__objectDepths[43] = -10; // objEnemyBehemoth
	global.__objectDepths[44] = -10; // objEnemyRunner
	global.__objectDepths[45] = -10; // objEnemyStandard
	global.__objectDepths[46] = -15; // objPlayer
	global.__objectDepths[47] = 0; // objBed
	global.__objectDepths[48] = 0; // objBooth
	global.__objectDepths[49] = 0; // objChair
	global.__objectDepths[50] = 0; // objCouch
	global.__objectDepths[51] = 0; // objCouch2
	global.__objectDepths[52] = 0; // objCouch3
	global.__objectDepths[53] = 0; // objCouch4
	global.__objectDepths[54] = 0; // objCouch5
	global.__objectDepths[55] = 0; // objCouch6
	global.__objectDepths[56] = 0; // objCounter
	global.__objectDepths[57] = 0; // objCupboard
	global.__objectDepths[58] = 0; // objDesk
	global.__objectDepths[59] = 0; // objDesk2
	global.__objectDepths[60] = 0; // objDesk3
	global.__objectDepths[61] = 0; // objDesk4
	global.__objectDepths[62] = 0; // objDesk5
	global.__objectDepths[63] = 0; // objEntertainmentCenter
	global.__objectDepths[64] = 0; // objFridge
	global.__objectDepths[65] = 0; // objMicrowave
	global.__objectDepths[66] = 0; // objShelf
	global.__objectDepths[67] = 5; // objTable
	global.__objectDepths[68] = -5; // objTable2
	global.__objectDepths[69] = -5; // objTable3
	global.__objectDepths[70] = 0; // objVHSRack
	global.__objectDepths[71] = 0; // objWorkTable
	global.__objectDepths[72] = -350; // objLightBullet
	global.__objectDepths[73] = -350; // objLightCeiling
	global.__objectDepths[74] = 0; // objLightCustom
	global.__objectDepths[75] = 0; // objLightDev
	global.__objectDepths[76] = -350; // objLightLamp
	global.__objectDepths[77] = 5; // objBrokenWindow
	global.__objectDepths[78] = 0; // objDoor
	global.__objectDepths[79] = 0; // objWall
	global.__objectDepths[80] = -5; // objHealthStation
	global.__objectDepths[81] = 0; // objLightSwitch
	global.__objectDepths[82] = 0; // objMysteryBox
	global.__objectDepths[83] = -35; // objBullet
	global.__objectDepths[84] = 0; // objAmmo
	global.__objectDepths[85] = 0; // objCash
	global.__objectDepths[86] = 0; // objSpawnPlayer


	global.__objectNames[0] = "objGame";
	global.__objectNames[1] = "objLighting";
	global.__objectNames[2] = "objShaders";
	global.__objectNames[3] = "objSurfaceParticles";
	global.__objectNames[4] = "objBackgroundEditor";
	global.__objectNames[5] = "objBackgroundGame";
	global.__objectNames[6] = "objBackgroundMenu";
	global.__objectNames[7] = "objBackgroundSplatter";
	global.__objectNames[8] = "objDamageNumber";
	global.__objectNames[9] = "objMessageSlowdown";
	global.__objectNames[10] = "objTransitionOut";
	global.__objectNames[11] = "objGoreBrains";
	global.__objectNames[12] = "objGoreDrop";
	global.__objectNames[13] = "objGoreDrop2";
	global.__objectNames[14] = "objGoreGuts";
	global.__objectNames[15] = "objGoreSmoke";
	global.__objectNames[16] = "objGoreSmoke2";
	global.__objectNames[17] = "objGoreSplatter";
	global.__objectNames[18] = "objGoreSplatter2";
	global.__objectNames[19] = "objGoreSplatterBlunt";
	global.__objectNames[20] = "objGoreSplatterCut";
	global.__objectNames[21] = "objDebris";
	global.__objectNames[22] = "objSlowdown";
	global.__objectNames[23] = "objParticleStream";
	global.__objectNames[24] = "objWeapon";
	global.__objectNames[25] = "parActor";
	global.__objectNames[26] = "parBuilding";
	global.__objectNames[27] = "parDoor";
	global.__objectNames[28] = "parEnemy";
	global.__objectNames[29] = "parFurniture";
	global.__objectNames[30] = "parGore";
	global.__objectNames[31] = "parLight";
	global.__objectNames[32] = "parPickup";
	global.__objectNames[33] = "parSolid";
	global.__objectNames[34] = "parSpawn";
	global.__objectNames[35] = "parWall";
	global.__objectNames[36] = "objEditor";
	global.__objectNames[37] = "objEditorButton";
	global.__objectNames[38] = "objEditorInstance";
	global.__objectNames[39] = "objEditorSensor";
	global.__objectNames[40] = "objEditorTextbox";
	global.__objectNames[41] = "objMenu";
	global.__objectNames[42] = "objSplash";
	global.__objectNames[43] = "objEnemyBehemoth";
	global.__objectNames[44] = "objEnemyRunner";
	global.__objectNames[45] = "objEnemyStandard";
	global.__objectNames[46] = "objPlayer";
	global.__objectNames[47] = "objBed";
	global.__objectNames[48] = "objBooth";
	global.__objectNames[49] = "objChair";
	global.__objectNames[50] = "objCouch";
	global.__objectNames[51] = "objCouch2";
	global.__objectNames[52] = "objCouch3";
	global.__objectNames[53] = "objCouch4";
	global.__objectNames[54] = "objCouch5";
	global.__objectNames[55] = "objCouch6";
	global.__objectNames[56] = "objCounter";
	global.__objectNames[57] = "objCupboard";
	global.__objectNames[58] = "objDesk";
	global.__objectNames[59] = "objDesk2";
	global.__objectNames[60] = "objDesk3";
	global.__objectNames[61] = "objDesk4";
	global.__objectNames[62] = "objDesk5";
	global.__objectNames[63] = "objEntertainmentCenter";
	global.__objectNames[64] = "objFridge";
	global.__objectNames[65] = "objMicrowave";
	global.__objectNames[66] = "objShelf";
	global.__objectNames[67] = "objTable";
	global.__objectNames[68] = "objTable2";
	global.__objectNames[69] = "objTable3";
	global.__objectNames[70] = "objVHSRack";
	global.__objectNames[71] = "objWorkTable";
	global.__objectNames[72] = "objLightBullet";
	global.__objectNames[73] = "objLightCeiling";
	global.__objectNames[74] = "objLightCustom";
	global.__objectNames[75] = "objLightDev";
	global.__objectNames[76] = "objLightLamp";
	global.__objectNames[77] = "objBrokenWindow";
	global.__objectNames[78] = "objDoor";
	global.__objectNames[79] = "objWall";
	global.__objectNames[80] = "objHealthStation";
	global.__objectNames[81] = "objLightSwitch";
	global.__objectNames[82] = "objMysteryBox";
	global.__objectNames[83] = "objBullet";
	global.__objectNames[84] = "objAmmo";
	global.__objectNames[85] = "objCash";
	global.__objectNames[86] = "objSpawnPlayer";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
