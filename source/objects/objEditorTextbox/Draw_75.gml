/// @description Draw Button

draw_set_colour(c_black);
draw_set_alpha(0.25);
draw_rectangle(textboxArea_x1, textboxArea_y1, textboxArea_x2, textboxArea_y2, false);
draw_set_alpha(1);
draw_rectangle_width(textboxArea_x1, textboxArea_y1, textboxArea_x2, textboxArea_y2, 4);

draw_set_font(fontGUI);
var _textWidth = string_width(string_hash_to_newline(textboxString));
var _textHeight = string_height(string_hash_to_newline(textboxString));
var _textScale = min(textboxAreaWidth / _textWidth, textboxAreaHeight / _textHeight);

draw_set_colour(c_white);
draw_set_alpha(1);
draw_text_parameters(fa_center, fa_middle, mean(textboxArea_x1, textboxArea_x2), mean(textboxArea_y1, textboxArea_y2), textboxString, 1, c_white, 4, _textScale, 0);

