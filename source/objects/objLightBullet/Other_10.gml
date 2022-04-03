/// @description Update Drawing

interpBlend = lerp(interpBlend, 0, 0.12 * g.gameTimescale);

colourBlend = (1 - interpBlend);
colourIndex = merge_colour(colourBase, merge_colour(c_yellow, merge_colour(c_orange, c_red, colourBlend), colourBlend), colourBlend);
drawRadius = lerp(drawRadiusMax, 0, colourBlend);

pl_light_set_color(colourIndex);
pl_light_set_alpha(interpBlend);
pl_light_set_radius(drawRadius);

