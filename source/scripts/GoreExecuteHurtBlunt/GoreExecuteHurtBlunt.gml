/// @description GoreExecuteHurtBlunt(direction);
/// @param direction
function GoreExecuteHurtBlunt() {

	//Sound Effect
	var _soundDistance = 192;
	var _soundPitch = rr(0.95, 1.025);
	var _soundGain = 0.85;

	if (!g.settingGore) {
	    var _soundIndex = sndMeleePunch1;
	    GoreExecuteSound(_soundIndex, _soundPitch, _soundGain);
	    exit;
	}

	//Sound Otherwise
	var _soundIndex = sndMeleeBlunt1;
	GoreExecuteSound(_soundIndex, _soundPitch, _soundGain);

	//Scale
	var _speedMultiplier = g.gameTimescale;
	var _Dir = argument[0];
	var _ID = noone;

	//Blood Drops
	repeat (4)  {
	    _ID = instance_create(x - 3 + random(6) + lengthdir_x(8, _Dir), y - 3 + random(6) + lengthdir_y(8, _Dir), objGoreDrop);
	    _ID.image_xscale = 1 - random(0.2);
	    _ID.image_yscale = _ID.image_xscale;
	    _ID.image_angle = point_direction(x + lengthdir_x(8, _Dir), y + lengthdir_y(8, _Dir), _ID.x, _ID.y);
	    _ID.sprite_index = sprGoreSplatterSmall;
	    _ID.direction = _ID.image_angle;
	    _ID.speed = (2 + random(2)) * _speedMultiplier;
	}

	//Extra Blood Drops
	repeat (2 + irandom(2))  {
	    _ID = instance_create(x - 3 + random(6) + lengthdir_x(8, _Dir), y - 3 + random(6) + lengthdir_y(8, _Dir), objGoreDrop);
	    _ID.image_xscale = 1 - random(0.2);
	    _ID.image_yscale = _ID.image_xscale;
	    _ID.image_angle = point_direction(x + lengthdir_x(8, _Dir), y + lengthdir_y(8, _Dir), _ID.x, _ID.y);
	    _ID.direction = _ID.image_angle;
	    _ID.speed = (2 + random(2)) * _speedMultiplier;
	}

	//Blood Smoke
	repeat (2)  {
	    _ID = instance_create(x - 3 + random(6) + lengthdir_x(16, _Dir), y - 3 + random(6) + lengthdir_y(16, _Dir), objGoreSmoke);
	    _ID.image_xscale = 1.2 - random(0.2);
	    _ID.image_yscale = _ID.image_xscale;
	    _ID.image_angle = _Dir - 20 + random(40);
	    _ID.direction = _ID.image_angle;
	    _ID.speed = (1 + random(1.5)) * _speedMultiplier;
	    _ID.friction = 0.15 * _speedMultiplier;
	}



}
