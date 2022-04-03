/// @description Draw Glowing Sprite

tweenGlowAlpha = wave(0, 0.25, 1, 0);
tweenScale = wave(0, 0.1, 2, 0);

draw_sprite_ext(sprite_index, image_index, x + 2, y + 2, image_xscale + tweenScale, image_yscale + tweenScale, image_angle, c_black, image_alpha * 0.5);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale + tweenScale, image_yscale + tweenScale, image_angle, image_blend, image_alpha);
d3d_set_fog(true, c_white, 1, 1);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale + tweenScale, image_yscale + tweenScale, image_angle, image_blend, tweenGlowAlpha * image_alpha);
d3d_set_fog(false, c_black, 1, 1);

