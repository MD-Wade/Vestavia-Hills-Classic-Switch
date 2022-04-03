/// @description EditorReturnObjectName();
function EditorReturnObjectName() {

	var _inObject = argument[0];
	var _objectName = object_get_name(_inObject);

	_objectName = string_replace(_objectName, "obj", "");
	_objectName = string_replace(_objectName, "par", "[Parent] ");

	return _objectName;



}
