/// @description GameStepPauseTrigger();
function GameStepPauseTrigger() {

	//Pause
	if (instance_exists(objPlayer))	{
		if (objPlayer.stateCurrent != PSTATES.Dead)	{
			if (gamepad_button_check_pressed(global.GP_ID, gp_start)) {
			    if !pauseEnabled    {
			        //Deactivate Instances
			        ds_list_clear(pauseInstancesList);
			        with (all)  {
			            switch (object_index)   {
			                case objShaders:
			                case objGame:
			                    break;
			                default:
			                    ds_list_add(other.pauseInstancesList, id);
			                    instance_deactivate_object(id);
			                    break;
			                }
			        }
        
			        //Save Screenshot of Map
			        g.gameSurfacePause = surface_create_clear(surface_get_width(application_surface), surface_get_height(application_surface));
			        surface_copy(g.gameSurfacePause, 0, 0, application_surface);
			        pauseEnabled = !pauseEnabled;
			    }
			}
		}
	}

	//Unpause
	if (pauseMenuTrigger)   {
	    if pauseEnabled {
	        //Free Surface
	        if surface_exists(g.gameSurfacePause)   {
	            surface_free(g.gameSurfacePause);
	        }
        
	        //Reactivate Instances
	        for (var i = 0; i < ds_list_size(pauseInstancesList); i ++) {
	            instance_activate_object(pauseInstancesList[| i]);
	        }
        
	        //Reset
	        pauseMenuTrigger = false;
	        pauseMenuIndex = 0;
	        pauseMenuSelected = 1;
	        pauseEnabled = !pauseEnabled;
	    }
	}



}
