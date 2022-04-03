/// @description GameExecuteSlowdown(scale, duration, [end_action]);
/// @param scale
/// @param  duration
/// @param  [end_action]
function GameExecuteSlowdown() {

	var _inScale = argument[0];
	var _inDuration = fs(argument[1]);
	var _inAction = -1;

	if argument_count > 2
	    _inAction = argument[2];
    
	with (instance_create(0, 0, objSlowdown))   {
	    slowdownScale = _inScale;
	    slowdownDuration = _inDuration;
	    slowdownActionEnd = _inAction;
	    slowdownReady = true;
	}



}
