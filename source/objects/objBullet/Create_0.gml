/// @description Initialize

//Initialize Bullet Stats
bulletReady = false;
bulletDistance = 768;
bulletDirection = 0;
bulletDamage = 0;
bulletKnockback = 0;
bulletType = -1;
bulletPenetration = 1;
bulletCreator = noone;

//Initialize Drawing
drawPos_x1 = x;
drawPos_y1 = y;
drawAlpha = 1;
drawAlphaSpeed = (0.12 * g.gameTimescale);
drawWidth = 1;

//Colours
colourUnder = c_white;
colourOver = c_yellow;

//Initialize Collisions
bulletCollisionArray[0] = parBuilding;
bulletCollisionArray[1] = parActor;
bulletCollisionCount = array_length_1d(bulletCollisionArray);

//Prepare
alarm[0] = 1;

