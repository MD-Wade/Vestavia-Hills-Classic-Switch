/// @description Draw Self

EnemyDrawSelf();

if (damageFlash > 0)    {
    damageFlash = approach(damageFlash, 0, (damageFlashRate * g.gameTimescale));
    d3d_set_fog(true, c_white, 1, 1);
    draw_sprite_ext(animSpriteCurrent, animFrame, x, y, animScale, animScale * animMeleeMirror, animAngle, animColour, animAlpha * damageFlash);
    d3d_set_fog(false, c_black, 1, 1);
}

