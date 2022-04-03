/// @description MysteryReturnCost(id);
/// @param id
function MysteryReturnCost() {

	var _inUser = argument[0];

	if (is_undefined(mysteryUseMap[? _inUser])) {
	    return mysteryCostBase;
	}   else    {
	    return mysteryCostBase + (mysteryCostIncrement * mysteryUseMap[? _inUser]);
	}



}
