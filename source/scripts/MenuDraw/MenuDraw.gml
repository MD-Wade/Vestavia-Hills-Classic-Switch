/// @description MenuDraw();
function MenuDraw() {

	//Initialize Surface
	if !surface_exists(menuSurface) {
	    menuSurface = surface_create_clear(room_width, room_height);
	}

	//Set Target
	surface_set_target(menuSurface);
	draw_clear_alpha(c_black, 0);

	//State Machine
	switch (stateCurrent)   {
	    case MENU_STATES.Credits:
	        MenuDrawCredits();
	        break;
	    default:
	        MenuDrawMenu();
	        break;
	}

	//Reset
	surface_reset_target();



}
