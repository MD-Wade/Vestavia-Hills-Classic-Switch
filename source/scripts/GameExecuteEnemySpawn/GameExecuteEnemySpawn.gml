/// @description GameExecuteEnemySpawn([index]);
/// @param [index]
function GameExecuteEnemySpawn() {

	//Initialize
	var _enemyIndex = -1;

	//Specify
	if (argument_count > 0)
	    _enemyIndex = argument[0];

	//Find Starting Position
	var _spawnOffset = 16;
	if chance(0.5)   {
	    var _posX = irandom_range(_spawnOffset, room_width - _spawnOffset);
	    var _posY = choose(_spawnOffset, room_height - _spawnOffset);
	}   else    {
	    var _posX = choose(_spawnOffset, room_width - _spawnOffset);
	    var _posY = irandom_range(_spawnOffset, room_height - _spawnOffset);
	}

	//Randomly Selected Enemy
	if (_enemyIndex == -1)  {
	    _enemyIndex = objEnemyStandard;
	    if chance(0.1)
	        _enemyIndex = objEnemyRunner;
	}

	instance_create(_posX, _posY, _enemyIndex);



}
