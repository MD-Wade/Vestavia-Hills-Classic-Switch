/// @description GameExecuteParticleStream(x, y, particle_type, count, duration);
/// @param x
/// @param  y
/// @param  particle_type
/// @param  count
/// @param  duration
function GameExecuteParticleStream() {

	var _inX, _inY, _inParticle, _inCount, _inDuration;

	_inX = argument[0];
	_inY = argument[1];
	_inParticle = argument[2];
	_inCount = argument[3];
	_inDuration = argument[4];

	with (instance_create(x + _inX, y + _inY, objParticleStream))   {
	    emitterParticle = _inParticle;
	    emitterCount = _inCount;
	    emitterTickMax = fs(_inDuration);
	    emitterCreator = other.id;
	    emitterOffsetX = _inX;
	    emitterOffsetY = _inY;
	}



}
