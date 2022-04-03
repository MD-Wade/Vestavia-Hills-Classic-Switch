/// @description Draw Tracer

if !bulletReady
    exit;

draw_set_alpha(0.5 * drawAlpha);
draw_set_colour(colourUnder);
draw_line_width(drawPos_x1, drawPos_y1, drawPos_x2, drawPos_y2, drawWidth);
draw_set_colour(colourOver);
draw_line_width(drawPos_x1, drawPos_y1, drawPos_x2, drawPos_y2, drawWidth * 0.8);
draw_set_alpha(1);

