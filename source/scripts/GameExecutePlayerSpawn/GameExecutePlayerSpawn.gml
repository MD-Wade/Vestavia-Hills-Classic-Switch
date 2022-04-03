/// @description GameExecutePlayerSpawn();
function GameExecutePlayerSpawn() {

	var _guiWidth = display_get_gui_width();
	var _guiHeight = display_get_gui_height();
	var _playerID;

	gamePlayerInstances[0] = -1;

	for (var i = 0; i < g.settingPlayerCount; i ++)  {
	    var _spawnID = instance_find(objSpawnPlayer, irandom(instance_number(objSpawnPlayer) - 1));
	    while _spawnID.spawnUsed    {
	        var _spawnID = instance_find(objSpawnPlayer, irandom(instance_number(objSpawnPlayer) - 1));
	        _spawnID.spawnUsed = true;
	    }
    
	    var _playerID = instance_create(_spawnID.x, _spawnID.y, objPlayer);
	    _playerID.playerIndex = i;
	    gamePlayerInstances[i] = _playerID;
	    _playerID.playerInputScheme = PLAYER_INPUT_SCHEMES.Gamepad;
	    _playerID.guiOffsetX = 0;
	    _playerID.guiOffsetY = 0;
	    _playerID.guiWidth = _guiWidth;
	    _playerID.guiHeight = _guiHeight;
	    guiScale = 1;
	}



}
