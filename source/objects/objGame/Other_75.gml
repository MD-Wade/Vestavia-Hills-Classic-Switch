/// @description 
/// @description Get Controller ID from System
var type = async_load[? "event_type"];
var pad_index = async_load[? "pad_index"];

// Please read 3) in a section below before copy&pasting this code.

switch (type)
{
	case "gamepad discovered":
	{
		global.GP_ID = pad_index;
		gamepad_set_axis_deadzone(global.GP_ID,0.2);
		break;
	}
	
	case "gamepad lost":
	{
		switch_controller_support_show(); //show the applet
		break;
	}
	default: break;
}