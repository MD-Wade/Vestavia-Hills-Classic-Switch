/// @description PlayerExecuteBulletCreate(x, y, count, direction, accuracy);
/// @param x
/// @param  y
/// @param  count
/// @param  direction
/// @param  accuracy
function PlayerExecuteBulletCreate() {

	var _posX = argument[0];
	var _posY = argument[1];
	var _Count = argument[2];
	var _Direction = argument[3];
	var _Accuracy = argument[4];

	var _bulletPosX = _posX + lengthdir_x(8, animAngle);
	var _bulletPosY = _posY + lengthdir_y(8, animAngle);
	var _bulletDamage = WeaponReturnStat("attackDamage");
	var _bulletKnockback = WeaponReturnStat("attackKnockback");

	repeat (_Count) {
	    var _calcEndDirection = _Direction + (random(_Accuracy) * choose(-1, 1));
	    var _idBullet = instance_create(_bulletPosX, _bulletPosY, objBullet);
	    _idBullet.bulletDirection = _calcEndDirection;
	    _idBullet.bulletCreator = id;
	    _idBullet.bulletDamage = WeaponReturnStat("attackDamage") * attackCriticalFactor;
	    _idBullet.bulletKnockback = WeaponReturnStat("attackKnockback");
	    _idBullet.bulletType = WeaponReturnStat("attackHurtType");
	    _idBullet.bulletPenetration = WeaponReturnStat("gunBulletPenetration");
	    _idBullet.drawPos_x1 = _posX;
	    _idBullet.drawPos_y1 = _posY;
	    _idBullet.bulletCritical = other.attackCritical;
	}



}
