/// @description Draw Total Overlays

switch (room)   {
    case roomGame:
    case roomMapApartment1:
        draw_set_colour(c_black);
        for (var i = 0; i < (g.settingPlayerCount); i ++) {
            var _scaleWidth = display_get_gui_width() / __view_get( e__VW.WPort, i );
            var _scaleHeight = display_get_gui_height() / __view_get( e__VW.HPort, i );
            var _x1 = __view_get( e__VW.XPort, i ) * _scaleWidth;
            var _y1 = __view_get( e__VW.YPort, i ) * _scaleWidth;
            var _x2 = _x1 + (__view_get( e__VW.WPort, i ) * _scaleWidth);
            var _y2 = _y1 + (__view_get( e__VW.HPort, i ) * _scaleHeight);
            draw_rectangle_width(_x1, _y1, _x2, _y2, 16);
        }
    break;
}

