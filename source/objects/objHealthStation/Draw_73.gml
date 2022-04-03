/// @description Draw Arrow

if (GameReturnActorStat("Health", GameReturnPlayerID(0)) < GameReturnActorStat("healthMax", GameReturnPlayerID(0))) {
    if (g.gameShowArrowHealth) {
        var _offsetX = 0;
        var _offsetY = 2 + abs(lengthdir_y(arrowBorder, arrowTween));
        var _posX = clamp(center_x(), __view_get( e__VW.XView, 0 ) + arrowBorder, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - arrowBorder);
        var _posY = clamp(bbox_bottom, __view_get( e__VW.YView, 0 ) + arrowBorder, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - arrowBorder);
        var _arrowAngle = point_direction(_posX + _offsetX, _posY + _offsetY, center_x(), center_y());
        arrowBlend = merge_colour(c_maroon, c_white, wave(0, 1, 0.35, 0));
        draw_sprite_ext(uiArrow, 0, _posX + _offsetX, _posY + _offsetY, arrowScale, arrowScale, _arrowAngle, arrowBlend, 1);
        arrowTween += 2;
    }
}

