/// @description Draw GUI

//Draw Area
draw_set_alpha(0.8);
draw_set_colour(c_black);
draw_rectangle(guiArea_x1, guiArea_y1, guiArea_x2, guiArea_y2, false);
draw_set_alpha(1);
draw_rectangle_width(guiArea_x1, guiArea_y1, guiArea_x2, guiArea_y2, guiBorder);

/*Draw Labels
draw_set_font(fontGUI);
draw_text_parameters(fa_center, fa_top, guiLabelX[0], guiLabelY[0], guiLabelString[0], 1, c_white, wave(2, 3, 2, 0), 1.5, 0);

/* */
/*  */
