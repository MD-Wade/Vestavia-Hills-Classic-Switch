/// @description Render Box and Weapon

switch (stateCurrent)   {
    case MYSTERY_STATES.Normal:
        draw_self();
        break;
        
    case MYSTERY_STATES.Opening:
    case MYSTERY_STATES.Item:
        draw_self();
        
        //Render Weapon
        var _weaponDrawAngle = weaponAnimAngleCurrent + wave(-2, 2, 4, 0);
        var _weaponDrawScale = weaponAnimScale + wave(-0.2, 0.2, 2, 0);
        draw_sprite_ext(sprWeapons, weaponAnimIndex, weaponAnimX, weaponAnimY, _weaponDrawScale, _weaponDrawScale, _weaponDrawAngle, weaponAnimColour, weaponAnimAlpha);
        break;
}

