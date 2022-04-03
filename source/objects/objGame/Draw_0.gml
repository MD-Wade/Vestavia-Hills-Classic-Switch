/// @description Draw Loading Text

switch (room)   {
    case roomInit:
        draw_set_font(fontGUI);
        if (loadingPercentage < 100)    {
            draw_text_parameters(fa_center, fa_middle, loadingTextX, loadingTextY, loadingString, 1, c_navy, wave(-4, 4, 0.5, 0), 1.25, 0);
            draw_progressbar(loadingBarX1, loadingBarY1, loadingBarX2, loadingBarY2, loadingPercentage, 2, merge_colour(c_blue, c_navy, wave(0, 1, 0.25, 0)));
        }   else    {
            draw_text_parameters(fa_center, fa_middle, continueTextX, continueTextY, continueString, 1, c_navy, wave(-4, 4, 0.5, 0), 1.25, 0);
        }
        break;
        
    default:
        if pauseEnabled {
            var _posX = mean(__view_get( e__VW.XView, view_current ), __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ));
            var _posY = mean(__view_get( e__VW.YView, view_current ), __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current ));
            draw_rectangle_colour(__view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ), __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current ), c_black, c_black, c_black, c_black, false);
    
            if surface_exists(g.gameSurfacePause)   {
                shader_set(shdVCR);
                pauseUniformIntensityAmount = approach(pauseUniformIntensityAmount, 1, 0.01);
                shader_set_uniform_f(pauseUniformIntensity, pauseUniformIntensityAmount);
                shader_set_uniform_f(pauseUniformResolution, surface_get_width(g.gameSurfacePause), surface_get_height(g.gameSurfacePause), 0); 
                shader_set_uniform_f(pauseUniformTime, current_time / 1000);
                draw_surface_center_ext(g.gameSurfacePause, _posX, _posY, __view_get( e__VW.WView, view_current ) / surface_get_width(g.gameSurfacePause), __view_get( e__VW.HView, view_current ) / surface_get_height(g.gameSurfacePause), 0, c_white, 1, 0, 0);
                shader_reset();
            }

            draw_set_alpha(pauseUniformIntensityAmount * 0.6);
            draw_rectangle_colour(__view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ), __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current ), c_black, c_black, c_black, c_black, false);
            draw_set_alpha(1);

            draw_set_font(fontGUI);
            var _drawBorder = 16;
            var _drawX = _posX;
            var _drawY = _posY - _drawBorder;
            var _drawScaleTitle = 1.0;
            draw_text_parameters(fa_center, fa_bottom, _posX, _posY, pauseMenuArray[pauseMenuIndex, 0], 1, c_red, wave(1, 4, 1, 0), _drawScaleTitle, 0);
            var _drawX = _posX;
            var _drawY = _posY + _drawBorder;
            var _drawScaleSubtitle = 0.75;
            
            for (var i = 1; i < array_length_2d(pauseMenuArray, pauseMenuIndex); i ++)  {
                var _pauseMenuEntry = pauseMenuArray[pauseMenuIndex, i];
                if (pauseMenuSelected == i) {
                    var _colourIndex = merge_colour(c_red, c_white, wave(0, 1, 0.4, 0));
                    _pauseMenuEntry = "> " + _pauseMenuEntry + " <";
                }   else    {
                    var _colourIndex = c_white;
                }

                draw_text_parameters(fa_center, fa_top, _posX, _posY, _pauseMenuEntry, 1, _colourIndex, wave(1, 4, 1, 0), _drawScaleSubtitle, 0);
                _posY += ((string_height(string_hash_to_newline(_pauseMenuEntry)) * _drawScaleSubtitle) + 4);
            }
        }   else    {
            pauseUniformIntensityAmount = approach(pauseUniformIntensityAmount, 0, 0.2);
            
            var _colourIndex = merge_colour(c_red, c_maroon, wave(0, 1, 1, 0));
            draw_set_alpha(guiWarningAlpha);
            draw_set_colour(_colourIndex);
            draw_rectangle(__view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ), __view_get( e__VW.YView, view_current ) +  __view_get( e__VW.HView, view_current ), false);
            draw_set_alpha(1);
        }
        break;
}

