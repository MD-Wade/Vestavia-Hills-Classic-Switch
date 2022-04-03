/// @description EditorInitDynamic();
function EditorInitDynamic() {

	dsListInstances = ds_list_create();

	dsGridObjects = ds_grid_create(3, 1);
	dsGridObjectsWidth = 3;
	dsGridObjectsHeight = 1;

	dsGridWallsCellSize = max(sprite_get_width(sprWall), sprite_get_height(sprWall));
	dsGridWallsWidth = ceil(room_width / dsGridWallsCellSize);
	dsGridWallsHeight = ceil(room_height / dsGridWallsCellSize);
	dsGridWalls = ds_grid_create(dsGridWallsWidth, dsGridWallsHeight);
	ds_grid_set_region(dsGridWalls, 0, 0, dsGridWallsWidth - 1, dsGridWallsHeight - 1, -1);



}
