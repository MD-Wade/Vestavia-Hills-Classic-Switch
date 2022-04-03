/// @description print(message, [message2]);
/// @param message
/// @param  [message2]
function print() {

	var _Coordinates = "(" + string(x) + ", " + string(y) + ")";
	var _Index = string(object_get_name(object_index));

	var _Output = "";
	for (var i = 0; i < (argument_count); i ++) {
	    _Output += string(argument[i]);
    
	    if (i < (argument_count - 1))
	        _Output += ", ";
	}

	var _finalMessage = _Index + " - " + _Coordinates + " - " + _Output;
	show_debug_message(_finalMessage);

	return _Output;



}
