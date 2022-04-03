/// @description Calculate Positions

//Update Drawing
depth = bulletCreator.depth + 5;
if (bulletCritical) {
    drawWidth = 2;
    colourUnder = c_orange;
    colourOver = c_red;
}   else    {
    drawWidth = 1;
    colourUnder = c_white;
    colourOver = c_yellow;
}

//Track Hit Instances
var _instancesHitList = ds_list_create();

//Bullet Penetration Loop
for (var iterationPenetration = 0; iterationPenetration < bulletPenetration; iterationPenetration ++)  {

    //Calculate Damage
    var _iterationInterpolation = ((iterationPenetration + 1) / bulletPenetration);
    var _calcBulletDamage = round(bulletDamage * lerp(1.0, 0.5, _iterationInterpolation));

    //Disable Downed Enemies and Creator
    var _enemiesDisabledList = ds_list_create();
    ds_list_add(_enemiesDisabledList, bulletCreator);
    instance_deactivate_object(bulletCreator);

    //Deactivate Hurt or Downed Enemies
    with (parEnemy) {
        var _isHurt = (ds_list_find_index(_instancesHitList, id) != -1);
        if !EnemyReturnStanding(stateCurrent) or _isHurt  {
            ds_list_add(_enemiesDisabledList, id);
            instance_deactivate_object(id);
        }
    }
    
    //Collisions
    var _calcBulletLengthX = lengthdir_x(bulletDistance, bulletDirection);
    var _calcBulletLengthY = lengthdir_y(bulletDistance, bulletDirection);
    var _calcBulletDistance = bulletDistance;
    var _calcBulletTargeted = false;
    var _calcBulletInstance = noone;
    var _calcBulletInstanceObject = -1;
    var _calcBulletEndX = x + _calcBulletLengthX;
    var _calcBulletEndY = y + _calcBulletLengthY;
    
    //Wall Obstruction Check
    var _calcBulletClipArray = collision_line_point(bulletCreator.x, bulletCreator.y, bulletCreator.x + lengthdir_x(8, bulletDirection), bulletCreator.y + lengthdir_y(8, bulletDirection), parBuilding, true, true);
    var _calcBulletClipInstance = _calcBulletClipArray[0];
    var _calcBulletClipX = _calcBulletClipArray[1];
    var _calcBulletClipY = _calcBulletClipArray[2];
    var _calcBulletClipCheck = (_calcBulletClipInstance == noone);
    
    if _calcBulletClipCheck    {
        for (var _arrayIndex = 0; _arrayIndex < bulletCollisionCount; _arrayIndex ++) {
            var _objectIndex =  bulletCollisionArray[_arrayIndex];
            var _bulletX1 = x;
            var _bulletY1 = y;
            var _bulletX2 = x + _calcBulletLengthX;
            var _bulletY2 = y + _calcBulletLengthY;
        
            var _calcEndArray = collision_line_point(_bulletX1, _bulletY1, _bulletX2, _bulletY2, _objectIndex, true, true);
            var _calcEndDistance = point_distance(x, y, _calcEndArray[1], _calcEndArray[2]);
            
            //Collision Found
            if (_calcEndArray[0] != noone)   {
                if (_calcEndDistance < _calcBulletDistance) {
                    _calcBulletDistance = _calcEndDistance;
                    var _calcBulletTargeted = true;
                    var _calcBulletInstance = _calcEndArray[0];
                    var _calcBulletInstanceObject = _calcBulletInstance.object_index;
                    var _calcBulletEndX = _calcEndArray[1];
                    var _calcBulletEndY = _calcEndArray[2];
                }
            }
        }
    }   else    {
        // Wall Clipped
        var _calcBulletTarget = true;
        var _calcBulletInstance = _calcBulletClipInstance;
        var _calcBulletInstanceObject = _calcBulletInstance.object_index;
        var _calcBulletEndX = _calcBulletClipX;
        var _calcBulletEndY = _calcBulletClipY;
        
        //End Checks
        iterationPenetration = bulletPenetration;
    }
            
    //Reactivate Instances
    for (var i = 0; i < ds_list_size(_enemiesDisabledList); i ++)   {
        instance_activate_object(_enemiesDisabledList[| i]);
    }   ds_list_destroy(_enemiesDisabledList);
    
    //Store Variables
    drawPos_x2 = _calcBulletEndX;
    drawPos_y2 = _calcBulletEndY;
    bulletReady = true;
    
    //Break if Penetrating Enemy and Hit Wall
    if (_calcBulletTargeted)    {
        if (object_is_ancestor(_calcBulletInstanceObject, parBuilding)) {
            if (iterationPenetration != 0)  {
                break;
            }
        }

        //Damage
        switch (_calcBulletInstanceObject)   {
            case objWall:
                with (_calcBulletInstance) {
                    GameExecuteDebris(other.bulletDirection + 180, 4, partDebrisWall, _calcBulletEndX, _calcBulletEndY);
                    sound_here(sndWeaponWall1, 192, false, rr(0.95, 1.0));
                }   break;
                
            case objDoor:
                with (_calcBulletInstance) {
                    GameExecuteDebris(other.bulletDirection + 180, 6, partDebrisDoor, _calcBulletEndX, _calcBulletEndY);
                    sound_here(sndWeaponWall1, 192, false, rr(0.88, 0.95));
                }   break;
        }
        
        //Enemy Damage
        if (object_is_ancestor(_calcBulletInstanceObject, parEnemy))    {
            with (_calcBulletInstance) {
                EnemyExecuteDamage(_calcBulletDamage, other.bulletDirection, other.bulletType, other.bulletKnockback, other.bulletCritical);
                break;
            }
        }
        
        //Add to Hit List
        ds_list_add(_instancesHitList, _calcBulletInstance);
    }
}

//Destroy Hit List
ds_list_destroy(_instancesHitList);

