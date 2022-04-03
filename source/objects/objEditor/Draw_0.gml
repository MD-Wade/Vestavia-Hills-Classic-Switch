/// @description Draw

var _colourStandard = merge_colour(c_white, c_ltgray, wave(0, 1, 20, 0));
var _colourInvalid = merge_colour(c_red, c_maroon, wave(0, 1, 0.2, 0));
draw_set_alpha(1);
draw_set_font(fontGUI);

switch (stateCurrent)   {
    case EDITOR_STATES.OBJECT_PLACE:
        if (editorObjectPlaceValid)
            var _objectColour = _colourStandard;
        else
            var _objectColour = _colourInvalid
        draw_sprite_ext(editorObjectSprite, 0, inputMouseGridX, inputMouseGridY, 1, 1, editorObjectRotation, _objectColour, 0.8);
    break;
    
    case EDITOR_STATES.WALL_PLACE:
        if editorWallStarted    {
            if (editorWallPlaceValid)
                draw_set_colour(_colourStandard);
            else
                draw_set_colour(_colourInvalid);
            EditorDrawWallTool(editorWall_x1, editorWall_y1, editorWall_x2, editorWall_y2);
        }
}

draw_set_colour(c_black);
draw_rectangle_width(editorMapArea_x1, editorMapArea_y1, editorMapArea_x2, editorMapArea_y2, 4);
draw_set_colour(c_red);
draw_rectangle_width(editorMapArea_x1, editorMapArea_y1, editorMapArea_x2, editorMapArea_y2, 2);

