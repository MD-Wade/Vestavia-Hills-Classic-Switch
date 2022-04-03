/// @description Initialize

image_speed = 0;
image_index = irandom(image_number - 1);
image_xscale = random_range(0.85, 1.25);
image_yscale = image_xscale;
speed = random_range(0, 4);
friction = random_range(0.25, 0.3);
alarm[0] = fs(2);

