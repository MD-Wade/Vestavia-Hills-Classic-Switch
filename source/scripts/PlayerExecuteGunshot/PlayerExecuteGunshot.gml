/// @description PlayerExecuteGunshot();
function PlayerExecuteGunshot() {

	var _bulletX = x;
	var _bulletY = y;
	var _bulletAccuracy = WeaponReturnStat("gunBulletAccuracy");
	var _bulletCount = WeaponReturnStat("gunBulletCount");
	var _bulletDirection = animAngle;
	var _soundIndex = -1;
	var _soundDistance = 320;
	var _soundPitch = rr(0.95, 1);

	//Spawn Bullet(s)
	PlayerExecuteBulletCreate(_bulletX, _bulletY, _bulletCount, _bulletDirection, _bulletAccuracy);

	//Determine Weapon
	switch (weaponCurrent[weaponSelected])    {
	    case "M16":
	        var _soundIndex = sndGunshotM16;
	        break;
	    case "Shotgun":
	        var _soundIndex = sndGunshotShotgun;
	        break;  
	    case "DoubleBarrel":
	        var _soundIndex = sndGunshotDoubleBarrel;
	        break;
	    case "SilencedPistol":
	        var _soundIndex = sndGunshotSilencer;
	        break;
	    case "Uzi":
	        var _soundIndex = sndGunshotUzi;
	        break;
	    case "Magnum":
	        var _soundIndex = sndGunshotMagnum;
	        break;
	    case "Skorpion":
	        var _soundIndex = sndGunshotSkorpion;
	        break;
	    case "MP5":
	        var _soundIndex = sndGunshotMP5;
	        break;
	    case "SilencedUzi":
	        var _soundIndex = sndGunshotSilencer;
	        break;
	    default:
	        print("ERROR: NOT A GUN");
	        break;
	}

	//Create Light
	var _lightID = instance_create(x, y, objLightBullet);
	if attackCritical
	    _lightID.colourBase = c_fuchsia;

	//Pitch for Critical
	if attackCritical
	    _soundPitch = rr(0.4, 0.6);
    
	//Play Sound
	if _soundIndex != -1
	    sound_here(_soundIndex, _soundDistance, false, _soundPitch);



}
