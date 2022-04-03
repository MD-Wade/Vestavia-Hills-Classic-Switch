/// @description PlayerExecuteWeaponUpdate();
function PlayerExecuteWeaponUpdate() {

	//Initialize
	weaponTickCurrent = 0;

	//Just Direct to Global Map
	mapWeaponStats = g.mapWeapons[? weaponCurrent[weaponSelected]];

	//Animate
	animSprite = PlayerReturnSpriteWalk();

	//Correct Erroneous Ammo Counts
	weaponAmmo[weaponSelected] = clamp(weaponAmmo[weaponSelected], 0, WeaponReturnStat("gunReloadClip"));
	weaponAmmoReserve[weaponSelected] = clamp(weaponAmmoReserve[weaponSelected], 0, WeaponReturnStat("gunReloadReserve"));



}
