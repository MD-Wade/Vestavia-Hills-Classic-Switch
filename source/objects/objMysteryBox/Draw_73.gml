/// @description Draw Arrow

var _playerID = GameReturnPlayerID(0);

if (GameReturnActorStat("cashAmount", _playerID) >= MysteryReturnCost(_playerID))   {
    if (g.gameShowArrowMystery) {
        var _offsetX = 4 + abs(lengthdir_x(arrowBorder, arrowTween));
        var _offsetY = 0;
        var _posX = clamp(bbox_right, __view_get( e__VW.XView, 0 ) + arrowBorder, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - arrowBorder);
        var _posY = clamp(center_y(), __view_get( e__VW.YView, 0 ) + arrowBorder, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - arrowBorder);
        var _arrowAngle = point_direction(_posX + _offsetX, _posY + _offsetY, center_x(), center_y());
        arrowBlend = merge_colour(c_maroon, c_white, wave(0, 1, 0.35, 0));
        draw_sprite_ext(uiArrow, 0, _posX + _offsetX, _posY + _offsetY, arrowScale, arrowScale, _arrowAngle, arrowBlend, 1);
        arrowTween += 2;
    }
}

