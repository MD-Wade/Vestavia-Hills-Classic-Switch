/// @description PlayerReturnSpriteWalk();
function PlayerReturnSpriteWalk() {

	var _returnSpriteName = "sprPlayer" + weaponCurrent[weaponSelected];
	var _returnSpriteIndex = asset_get_index(_returnSpriteName);

	return _returnSpriteIndex;



}
