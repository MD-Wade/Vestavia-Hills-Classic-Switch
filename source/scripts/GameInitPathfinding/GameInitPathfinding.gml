/// @description GameInitPathfinding();
function GameInitPathfinding() {

	g.pathfindingGridCellSize = 8;
	pathfindingGridWidth = ceil(room_width / global.pathfindingGridCellSize);
	pathfindingGridHeight = ceil(room_height / global.pathfindingGridCellSize);

	g.pathfindingGrid = mp_grid_create(0, 0, pathfindingGridWidth, pathfindingGridHeight, global.pathfindingGridCellSize, global.pathfindingGridCellSize);
	mp_grid_add_instances(global.pathfindingGrid, parSolid, true);



}
