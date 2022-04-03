/// @description EditorInitObjects();
function EditorInitObjects() {

	var _objectIndex = 0;
	while object_exists(_objectIndex)   {
	    var _isFurniture = object_is_ancestor(_objectIndex, parFurniture);
    
	    //Only Furniture
	    if !_isFurniture {
	        _objectIndex ++;
	        continue;
	    }

	    var _objectSprite = object_get_sprite(_objectIndex);
	    if !sprite_exists(_objectSprite)
	        _objectSprite = uiCursorError;

	    dsGridObjects[# 0, dsGridObjectsHeight - 1] = EditorReturnObjectName(_objectIndex);
	    dsGridObjects[# 1, dsGridObjectsHeight - 1] = _objectIndex;
	    dsGridObjects[# 2, dsGridObjectsHeight - 1] = _objectSprite;

	    dsGridObjectsHeight ++;
	    _objectIndex ++;
	    ds_grid_resize(dsGridObjects, dsGridObjectsWidth, dsGridObjectsHeight);
	}

	for (var i = 0; i < (dsGridObjectsHeight - 1); i ++)    {
	    print(dsGridObjects[# 0, i]);
	}
	print(dsGridObjectsHeight);

	editorObjectEntry = 0;
	editorObjectRotation = 0;
	editorObjectName = "ERR";
	editorObjectIndex = -1;
	editorObjectSprite = -1;

	editorSensorID = instance_create(0, 0, objEditorSensor);
	editorSensorCollisionInstance = false;



}
