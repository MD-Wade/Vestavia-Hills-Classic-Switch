/// @description Draw Button

if (buttonToggled)
    var _targetBlend = c_dkgray;
else
    var _targetBlend = c_white;
buttonColour = _targetBlend;
draw_sprite_stretched_ext(sprite_index, buttonFrame, buttonArea_x1, buttonArea_y1, buttonAreaWidth, buttonAreaHeight, buttonColour, 1);

