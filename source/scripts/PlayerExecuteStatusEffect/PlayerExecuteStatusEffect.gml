/// @description PlayerExecuteStatusEffect(effect, duration);
/// @param effect
/// @param  duration
function PlayerExecuteStatusEffect() {

	var _inEffect, _inDuration;
	_inEffect = argument[0];
	_inDuration = argument[1];

	mapStatusEffects[? _inEffect] = fs(_inDuration);



}
