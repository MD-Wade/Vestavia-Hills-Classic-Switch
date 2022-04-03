/// @description GameExecuteMapLoad(json);
/// @param json
function GameExecuteMapLoad() {

	var _jsonInput = argument[0];
	var _mapIndex = json_decode(_jsonInput);
	var _listInstances = _mapIndex[? "mapInstances"];

	for (var i = 0; i < ds_list_size(_listInstances); i ++)  {
	    var _instanceMap = _listInstances[| i];
	    var _instanceObject = asset_get_index(_instanceMap[? "objectIndex"]);
	    var _instancePosX = _instanceMap[? "posX"];
	    var _instancePosY = _instanceMap[? "posY"];
	    var _instanceSprite = asset_get_index(_instanceMap[? "drawSprite"]);
	    var _instanceAngle = _instanceMap[? "drawAngle"];

	    var _instanceID = instance_create(_instancePosX, _instancePosY, _instanceObject);
	    with (_instanceID)  {
	        if sprite_exists(_instanceSprite)
	            sprite_index = _instanceSprite;
	        else
	            sprite_index = uiCursorError;
	        image_angle = _instanceAngle;
	    }
	}

	ds_map_destroy(_mapIndex);



}
