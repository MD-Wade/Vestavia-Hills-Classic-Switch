/// @description EnemyReturnTargetFind();
function EnemyReturnTargetFind() {

	var _instanceReturn = noone;
	if climbCheck   {
	    var _disabledList = ds_list_create();
    
	    for (var i = 0; i < instance_number(objPlayer); i ++)   {
	        var _instanceNearest = instance_nearest(x, y, objPlayer);
        
	        with (_instanceNearest) {
	            if PlayerReturnAttackable() {
	                _instanceReturn = _instanceNearest;
	                break;
	            }   else    {
	                instance_deactivate_object(id);
	                ds_list_add(_disabledList, id);
	            }
	        }
	    }
    
	    //Reenable
	    for (var i = 0; i < ds_list_size(_disabledList); i ++)  {
	        instance_activate_object(_disabledList[| i]);
	    }
	    ds_list_destroy(_disabledList);
	}   else    {
	    _instanceReturn = instance_nearest(x, y, objBrokenWindow);
	}


	//Return
	return _instanceReturn;



}
