/// @description Initialize

animSpeedLerp = 0.1 * g.gameTimescale;

movementVelocityX = 0;
movementVelocityY = 0;
movementFriction = 0.15 * g.gameTimescale;

pickupTick = fs(0.5);
pickupReady = false;
pickupPerformed = false;
pickupLife = fs(25);

image_angle = irandom(360);
depth = -5;

