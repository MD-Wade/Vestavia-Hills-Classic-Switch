/// @description Draw Effect

if effectReady  {
    guiWidth = display_get_gui_width();
    guiHeight = display_get_gui_height();
    drawAlpha = approach(drawAlpha, drawAlphaTarget, drawAlphaSpeed);
    guiHeightMiddle = guiHeight / 2;
    
    drawRectangle_x1 = 0;
    drawRectangle_y1 = guiHeightMiddle - drawRectangleHeight;
    drawRectangle_x2 = approach(drawRectangle_x2, guiWidth, (guiWidth / fs(0.1)));
    drawRectangle_y2 = guiHeightMiddle + drawRectangleHeight;
    
    draw_set_alpha(drawAlpha);
    draw_set_colour(c_black);
    draw_rectangle(drawRectangle_x1 - drawBorder, drawRectangle_y1 - drawBorder + drawOffsetY, drawRectangle_x2 + drawBorder, drawRectangle_y2 + drawBorder + drawOffsetY, false);
    draw_rectangle_colour(drawRectangle_x1, drawRectangle_y1 + drawOffsetY, drawRectangle_x2, drawRectangle_y2 + drawOffsetY, drawRectangleColour, drawRectangleColour, c_black, c_black, false);
    
    draw_set_font(fontOnslaught);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    var _drawShadow = wave(2, 8, 1, 0);
    for (var i = 1; i < (letterStringCount); i ++) {
        if (letterEnabled[i])   {
            var _interpAmount = (i / (letterStringCount));
            var _drawColour = merge_colour(colorMain, colorSub, wave(0, 1, 0.5, 0.125 * _interpAmount));
            var _tweenY = wave(-2, 2, 12, (12 / 4) * (_interpAmount));
            var _letterShakeRandomX = irandom_range(letterShake[i] * -1, letterShake[i]);
            var _letterShakeRandomY = irandom_range(letterShake[i] * -1, letterShake[i]);
            letterShake[i] = letterShake[i] * letterShakeFactor;
            draw_text_outline(letterX[i] + _letterShakeRandomX, letterY[i] + _letterShakeRandomY + drawOffsetY + _tweenY, string_char_at(letterString, i), letterStringScale, 2, _drawColour, merge_colour(_drawColour, c_black, wave(0, 1, 0.5, 0)));
        }
    }
    
    draw_set_alpha(1);
}

