/// @description  STEP EVENT ///

// Thin out the blood as it spreads
image_xscale -= 0.035;
image_yscale  = image_xscale;

// I also decided to fade the blood out by a random percentage as it spreads
// These values seemed to feel right
if (movSpd > 0)
    image_alpha -= random_range(0.01, 0.02);

// Slow down the blood with friction
movSpd = approach(movSpd, 0, fric);

// I decided to draw the blood to the surface here
// This isn't really necessary, you could put this somewhere else
/*
if (instance_exists(oControllerBlood)) {
    surface_set_target(oControllerBlood.surf);
    draw_sprite_ext(sBlood, 0, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    surface_reset_target();  
}*/

// Once the blood thins away to nothing, destroy it
// Destroy self
if (image_xscale <= 0) or (image_alpha <= 0)
    instance_destroy();

/* */
/*  */
