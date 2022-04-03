/// @description Update

switch (numberType) {
    case 0: //Damage
        colourMin = c_maroon;
        colourMax = c_red;
        interpTickMax = fs(0.15);
        drawScaleMin = 0.2;
        drawScaleMax = 1.25;
        break;
        
    case 1: //Death
        colourMin = c_black;
        colourMax = c_maroon;
        interpTickMax = fs(0.25);
        drawScaleMin = 0.35;
        drawScaleMax = 1.5;
        break;
        
    case 2: //Heal
        colourMin = c_lime;
        colourMax = c_green;
        interpTickMax = fs(0.15);
        drawScaleMin = 0.35;
        drawScaleMax = 1.5;
        break;
        
    case 3: //Crit
        colourMin = c_white;
        colourMax = c_yellow;
        interpTickMax = fs(0.25);
        drawScaleMin = 0.4;
        drawScaleMax = 2;
        drawString = drawString + "!";
        break;
}

