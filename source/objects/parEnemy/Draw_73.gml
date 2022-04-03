/// @description Draw Healthbar

if (g.settingEnemyHealthbars)   {
    if (statsHealth < statsHealthMax)   {
        if (stateCurrent != ESTATES.Dead)    {
            drawHealthbar_x1 = x - (drawHealthbarWidth / 2);
            drawHealthbar_y1 = bbox_top - (drawHealthbarHeight);
            drawHealthbar_x2 = x + (drawHealthbarWidth / 2);
            drawHealthbar_y2 = drawHealthbar_y1 + (drawHealthbarBorder * 1.5);
            var _drawColour = merge_colour(c_red, c_white, damageFlash);
            draw_set_alpha(0.8);
            draw_progressbar(drawHealthbar_x1, drawHealthbar_y1, drawHealthbar_x2, drawHealthbar_y2, (statsHealth / statsHealthMax) * 100, drawHealthbarBorder, _drawColour);
            draw_set_alpha(1);
        }
    }
}

