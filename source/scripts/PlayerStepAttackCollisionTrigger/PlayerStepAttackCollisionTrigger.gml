/// @description PlayerStepAttackCollisionTrigger();
function PlayerStepAttackCollisionTrigger() {

	var _enemyHurt = false;
	var _damageSource = id;
	var _attackCollisionX = attackCollisionX;
	var _attackCollisionY = attackCollisionY;
	var _withinFrames = (animFrame >= WeaponReturnStat("meleeFrameFirst")) and (animFrame <= WeaponReturnStat("meleeFrameLast"));
	var _withinCollision, _isStanding, _isUnobscured;

	//Damage Variables
	var _damageAmount = WeaponReturnStat("attackDamage") * attackCriticalFactor;
	var _damageAngle = animAngle;
	var _damageHurtType = WeaponReturnStat("attackHurtType");
	var _damageKnockback = WeaponReturnStat("attackKnockback");

	if _withinFrames    {
	    with (parEnemy) {
	        //Perform Checks
	        _withinCollision = (rectangle_in_triangle(bbox_left, bbox_top, bbox_right, bbox_bottom, _attackCollisionX[0], _attackCollisionY[0], _attackCollisionX[1], _attackCollisionY[1], _attackCollisionX[2], _attackCollisionY[2]) > 0);
	        _isUp = EnemyReturnStanding(stateCurrent);
	        _isUnobscured = (collision_line(x, y, other.x, other.y, parBuilding, true, -1) == noone);
	        _isUnstruck = (ds_list_find_index(other.weaponMeleeCollisionsList, id) == -1);
        
	        //Hurt Applicable Enemy
	        if _withinCollision and _isUp and _isUnobscured and _isUnstruck {
	            damageSource = _damageSource;
	            _enemyHurt = true;
	            EnemyExecuteDamage(_damageAmount, _damageAngle, _damageHurtType, _damageKnockback, damageSource.attackCritical);
	            ds_list_add(other.weaponMeleeCollisionsList, id);
	        }
	    }
	}

	//Shake if Hurt
	if _enemyHurt
	    PlayerExecuteCameraShakeAdd(32);



}
