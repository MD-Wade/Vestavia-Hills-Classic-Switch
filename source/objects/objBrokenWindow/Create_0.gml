/// @description Initialize

alarm[0] = 1;
image_speed = 0;

targetX = center_x();
targetY = center_y();

windowBarricaded = true;
windowHealthBase = 50;
windowHealth = windowHealthBase;

interactionMessageBase = "THE WINDOW IS BARRICADED";
interactionMessageBarricade = "[Hold ZL] BARRICADE WINDOW";
interactionMessage = interactionMessageBase;
interactionBarricading = false;

barricadeProgress = 0;
barricadeProgressMax = fs(2.4);

