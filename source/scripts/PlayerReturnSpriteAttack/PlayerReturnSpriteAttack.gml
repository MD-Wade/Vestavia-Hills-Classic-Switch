/// @description PlayerReturnSpriteAttack();
function PlayerReturnSpriteAttack() {

	var _returnSpriteName = "sprPlayerAttack" + weaponCurrent[weaponSelected];
	var _returnSpriteIndex = asset_get_index(_returnSpriteName);

	return _returnSpriteIndex;



}
