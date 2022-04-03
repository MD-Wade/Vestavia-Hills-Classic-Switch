/// @description FurnitureInitRandomize([type], [parameter]);
/// @param [type]
/// @param  [parameter]
function FurnitureInitRandomize() {

	event_inherited();

	if argument_count > 0   {
	    switch (argument[0])    {
	        case 0: //Random Angle
	            image_angle = irandom(360);
	            break;
            
	        case 1:
	            image_index = irandom(image_number - 1);
	            image_speed = 0;
	            break;
            
	        case 2:
	            image_angle = irandom(argument[1] * choose(-1, 1));
	            break;
	        }
	}   else    {
	    image_index = irandom(image_number - 1);
	    image_speed = 0;
	}



}
