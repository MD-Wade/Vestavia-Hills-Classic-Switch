/// @description wrap( value, minimum, maximum )
/// @param  value
/// @param  minimum
/// @param  maximum 
function wrap(argument0, argument1, argument2) {
	var _mod = ( argument0 - argument1 ) mod ( argument2 - argument1 );
	if ( _mod < 0 ) return _mod + argument2 else return _mod + argument1;



}
