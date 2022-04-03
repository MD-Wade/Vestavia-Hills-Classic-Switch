/// @description PlayerExecuteConsumable();
function PlayerExecuteConsumable() {

	switch (weaponCurrent[weaponSelected])  {
	    case "Cigarette":
	        g.gameTimescaleCigaretteTarget = 0.5;
	        cameraWidth = cameraWidthZoom;
	        PlayerExecuteStatusEffect("Buzzed", 16);
        
	        var _posX, _posY;
	        _posX = lengthdir_x(4, animAngle);
	        _posY = lengthdir_y(4, animAngle);
	        GameExecuteParticleStream(_posX, _posY, g.particleSmoke, 4, 0.25);
	        break;
	}

	//Remove Consumable
	PlayerExecuteWeaponSet(weaponSelected, "Unarmed");



}
