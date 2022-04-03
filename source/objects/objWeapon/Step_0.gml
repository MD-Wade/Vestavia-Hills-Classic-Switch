/// @description Run Variables

//Physics
var _calcVelocityTotal = (abs(weaponVelocityX) + abs(weaponVelocityY));
if (_calcVelocityTotal > 0) {
    if place_meeting(x + weaponVelocityX, y, parWall)   {
        while !place_meeting(x + sign(weaponVelocityX), y, parWall) {
            x += sign(weaponVelocityX);
        }   weaponVelocityX = weaponVelocityX * weaponVelocityBounce;
    }   x += weaponVelocityX;
    
    if place_meeting(x, y + weaponVelocityY, parWall)   {
        while !place_meeting(x, y + sign(weaponVelocityY), parWall) {
            y += sign(weaponVelocityY);
        }   weaponVelocityY = weaponVelocityY * weaponVelocityBounce;
    }   y += weaponVelocityY;
    
    weaponVelocityX = approach(weaponVelocityX, 0, weaponVelocityFriction);
    weaponVelocityY = approach(weaponVelocityY, 0, weaponVelocityFriction);
    weaponDrawAngle = ((weaponDrawAngle + ((weaponVelocityX * 2) + (weaponVelocityY))) mod 360);
}

