/// @description Draw Indicators

var _indicatorWidth = 48;
var _indicatorHeight = 8;
var _indicatorOffsetY = 6;
var _indicatorBorder = 1;
var _saveMask = mask_index;
var _saveAngle = image_angle;

//Update for Centering
mask_index = animSprite;
image_angle = animAngle;

var _x1 = center_x() - (_indicatorWidth * 0.5);
var _y1 = bbox_bottom + _indicatorOffsetY;
var _x2 = center_x() + (_indicatorWidth * 0.5);
var _y2 = bbox_bottom + _indicatorOffsetY + (_indicatorHeight);

//Reset
mask_index = _saveMask;
image_angle = _saveAngle;
var _colourIndex = c_ltgray;

switch (stateCurrent)   {
    case PSTATES.Reload:
        if (weaponEndReload)
            _colourIndex = c_gray;
        draw_progressbar(_x1, _y1, _x2, _y2, weaponReloadTickInterp * 100, _indicatorBorder, _colourIndex);
    break;
        
    case PSTATES.Barricading:
        draw_progressbar(_x1, _y1, _x2, _y2, barricadeProgress, _indicatorBorder, _colourIndex);
    break;
}

draw_sprite_ext(uiCursorGame, animFrameCursor, inputMouseX, inputMouseY, 1, 1, 0, c_white, 1);
animFrameCursor = ((animFrameCursor + 0.35) mod (sprite_get_number(uiCursorGame) - 1));

