/// @description Draw Self

drawColour = c_white;
drawColour = merge_colour(drawColour, colourIndexInvalid, colourBlendInvalid);
drawColour = merge_colour(drawColour, colourIndexRecharge, colourBlendRecharge);
drawColour = merge_colour(drawColour, colourIndexUse, colourBlendUse);

colourBlendUse = approach(colourBlendUse, 0, 0.1 * g.gameTimescale);
colourBlendInvalid = approach(colourBlendInvalid, 0, 0.05 * g.gameTimescale);
colourBlendRecharge = approach(colourBlendRecharge, 0, 0.025 * g.gameTimescale);

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, drawColour, 1);

