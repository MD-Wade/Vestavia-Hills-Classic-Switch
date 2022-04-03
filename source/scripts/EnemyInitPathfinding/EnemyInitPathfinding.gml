/// @description EnemyInitPathfinding();
function EnemyInitPathfinding() {

	climbCheck = false;
	pathfindingIndex = path_add();
	pathfindingTargetID = EnemyReturnTargetFind();
	pathfindingEntered = false;
	path_set_closed(pathfindingIndex, false);
	EnemyExecutePathUpdate();



}
