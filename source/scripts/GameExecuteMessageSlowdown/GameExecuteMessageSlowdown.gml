/// @description GameExecuteMessageSlowdown(effect_type);
/// @param effect_type
function GameExecuteMessageSlowdown() {

	var _inEffect = argument[0];

	var _idOnslaught = instance_create(0, 0, objMessageSlowdown);
	_idOnslaught.effectType = _inEffect;



}
