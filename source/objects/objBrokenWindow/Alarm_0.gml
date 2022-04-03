/// @description Revert Mask

mask_index = sprWall;
targetX = center_x();
targetY = center_y();

var _offsetLength = 8;
switch (round_n(image_angle, 90))    {
    case 0:
        targetY += _offsetLength;
        break;
    case 90:
        targetX += _offsetLength;
        break;
    case 180:
        targetY -= _offsetLength;
        break;
    case 270:
        targetX -= _offsetLength;
        break;
}

