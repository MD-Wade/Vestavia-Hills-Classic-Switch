/// @description Draw Number

var _drawColour = (merge_colour(colourMin, colourMax, interpAmount));
var _drawScale = lerp(drawScaleMin, drawScaleMax, interpAmount);

draw_set_alpha(interpAmount);
draw_set_font(fontDamageNumber);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_outline(x, y, drawString, _drawScale / 2, 2, _drawColour, c_black);
draw_set_alpha(1);

