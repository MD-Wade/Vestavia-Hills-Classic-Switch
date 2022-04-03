/// @description Run Variables

switch (stateCurrent)   {
    case MYSTERY_STATES.Normal:
        MysteryStepColours(colourArrayNormal, 0.01);
        weaponAnimAlpha = approach(weaponAnimAlpha, 0, g.gameTimescale * 0.15);
        if (weaponAnimAlpha <= 0)   {
            image_index = approach(image_index, 0, animSpeed);
        }
        break;
        
    case MYSTERY_STATES.Opening:
        MysteryStepOpening();
        MysteryStepColours(colourArrayOpening, 0.1);
        break;
        
    case MYSTERY_STATES.Item:
        MysteryStepItem();
        break;
}

