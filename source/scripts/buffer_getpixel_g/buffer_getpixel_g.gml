/// @description buffer_getpixel_g(ind,x,y,width,height)
/// @param ind
/// @param x
/// @param y
/// @param width
/// @param height
function buffer_getpixel_g(argument0, argument1, argument2, argument3, argument4) {
	var buff1 = argument0;
	if (argument1 >= argument3) || (argument2 >= argument4) return 0;

	var px = (argument1+(argument2*argument3))*4;

	//buffer_seek(buff1,buffer_seek_start,px+1)
	var p1 = buffer_peek(buff1,px+1,buffer_u8);

	return (p1);



}
