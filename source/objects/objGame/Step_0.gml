/// @description Update Variables

//State Machine
switch (stateCurrent)   {
    case GSTATES.loadingAudio:
	    stateCurrent = GSTATES.Menu;
	    room_goto(roomSplash);
        break;
    case GSTATES.Menu:
        break;
    case GSTATES.Game:
        GameStepUpdate();
        break;
}

//Constant Updates
GameStepAudioUpdate();
GameStepGlobalHotkeys();

//Update GUI Size
display_set_gui_size(surface_get_width(application_surface), surface_get_height(application_surface));

