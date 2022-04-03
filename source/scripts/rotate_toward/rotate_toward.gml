/// @description rotate_toward(start, end, speed )      
/// @param start
/// @param  end
/// @param  speed 
function rotate_toward() {

	var start_angle = argument[0];
	var _targetangle = argument[1];
	var _angledifference = angle_difference(start_angle, _targetangle);
	start_angle -= min(abs(_angledifference), 10) * sign(_angledifference);
	return (start_angle mod 360);



}
