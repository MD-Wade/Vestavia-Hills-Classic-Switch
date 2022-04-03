/// @description  pl_add(obj1, obj2, ...)
/// @param obj1
/// @param  obj2
/// @param  ...
function pl_add() {

	for (var i = 0; i < argument_count; i++) {
	    ds_list_add(_pl_lightObjects, argument[i]);
	}



}
