/// @description Animate and Move

//Collision
if place_meeting(x + movementVelocityX, y, parSolid)    {
    while !place_meeting(x + sign(movementVelocityX), y, parSolid)  {
        x += sign(movementVelocityX);
    }   movementVelocityX = 0;
}   x += movementVelocityX;

if place_meeting(x, y + movementVelocityY, parSolid)    {
    while !place_meeting(x, y + sign(movementVelocityY), parSolid)  {
        y += sign(movementVelocityY);
    }   movementVelocityY = 0;
}   y += movementVelocityY;

//Friction
movementVelocityX = approach(movementVelocityX, 0, movementFriction);
movementVelocityY = approach(movementVelocityY, 0, movementFriction);

//Rotate
var _calcAngleSpeed = (abs(movementVelocityX) + abs(movementVelocityY / 4)) * 2;
image_angle += _calcAngleSpeed;

//Ready
if !pickupReady {
    pickupTick = approach(pickupTick, 0, 1);
    if pickupTick <= 0
        if !pickupPerformed {
            pickupReady = true;
        }
}

//Move Towards Target
if pickupPerformed  {
    if instance_exists(userID)  {
        x = lerp(x, userID.x, animSpeedLerp);
        y = lerp(y, userID.y, animSpeedLerp);
        
    }

    image_alpha = lerp(image_alpha, 0, animSpeedLerp);
    if image_alpha <= 0.05
        instance_destroy();
}

//Fade Away
pickupLife = approach(pickupLife, 0, g.gameTimescale);
if (pickupLife <= 0)    {
    userID = noone;
    pickupPerformed = true;
}

