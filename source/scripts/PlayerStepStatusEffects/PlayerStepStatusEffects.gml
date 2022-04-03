/// @description PlayerStepStatusEffects();
function PlayerStepStatusEffects() {

	var _effectCount, _effectIndex;
	_effectCount = ds_map_size(mapStatusEffects);

	//Only Continue if Effects are Present
	if (_effectCount > 0)   {
	    _effectIndex = ds_map_find_first(mapStatusEffects);
    
	    //Decrement Length of Effects, Delete Once 0
	    while !is_undefined(mapStatusEffects[? _effectIndex])   {
	        mapStatusEffects[? _effectIndex] = approach(mapStatusEffects[? _effectIndex], 0, 1);
	        if mapStatusEffects[? _effectIndex] <= 0    {
	            ds_map_delete(mapStatusEffects, _effectIndex);
            
	            //Effect-Specific Events
	            switch (_effectIndex)   {
	                case "Buzzed":
	                    cameraWidth = cameraWidthBase;
	                    g.gameTimescaleCigaretteTarget = g.gameTimescaleBase;
	                break;
	            }
	        }
	        _effectIndex = ds_map_find_next(mapStatusEffects, _effectIndex);
	    }
	}



}
