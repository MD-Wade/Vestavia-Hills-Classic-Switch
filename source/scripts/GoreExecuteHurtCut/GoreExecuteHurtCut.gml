/// @description GoreExecuteHurtCut(direction);
/// @param direction
function GoreExecuteHurtCut() {

	//Sound Effect
	var _soundDistance = 192;
	var _soundPitch = rr(0.95, 1.025);
	var _soundGain = 0.85;

	if (!g.settingGore) {
	    var _soundIndex = sndMeleePunch1;
	    GoreExecuteSound(_soundIndex, _soundPitch, _soundGain, _soundDistance);
	    exit;
	}

	//Sound Otherwise
	var _soundIndex = choose(sndMeleeCut1, sndMeleeCut2);
	GoreExecuteSound(_soundIndex, _soundPitch, _soundGain, _soundDistance);

	//Scale
	var _speedMultiplier = g.gameTimescale;
	var _Dir = argument[0];
	var _ID = noone;

	//Blood Smoke
	repeat (2)   {
	    _ID = instance_create(x - 2 + random(4), y - 2 + random(4), objGoreSmoke2);
	    _ID.speed = (2 + random(1)) * _speedMultiplier;
	    _ID.direction = point_direction(x, y, _ID.x, _ID.y);
	    _ID.image_angle = _ID.direction;
	}

	//Blood Impacts
	repeat (4) {
	    _ID = instance_create(x - 1 + random(2), y - 1 + random(2), objGoreSplatterBlunt);
	    _ID.speed = (1 + random(2)) * _speedMultiplier;
	    _ID.friction = 0.2 * _speedMultiplier;
	    _ID.direction = _Dir - 45 + random(90);
	    _ID.image_angle = _ID.direction;
	}

	//Blood Splats
	repeat (1 + irandom(1))   {
	    var _ID = instance_create(x - 7 + random(14), y - 7 + random(14), objGoreSplatter2);
	    _ID.addspeed = _ID.addspeed * _speedMultiplier;
	}

	//Guts
	repeat (irandom(2))  {
	    _ID = instance_create(x, y, objGoreGuts);
	    _ID.speed = (1 + random(1))  * _speedMultiplier;
	    _ID.direction = _Dir - 20 - random(40);
	    _ID.image_angle = _ID.direction;
	}

	//Cut Impact
	_ID = instance_create(x, y, objGoreSplatterCut);
	_ID.direction = _Dir;
	_ID.speed = (1 + random(1)) * _speedMultiplier;



}
