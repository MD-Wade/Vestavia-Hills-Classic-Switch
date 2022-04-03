/// @description Initialize

interpAmount = 0;
interpDirection = 1;
interpSpeed = 0.1;
interpTick = 0;
interpTickMax = fs(0.16);
interpSpeedY = 4;

drawString = "";
drawScaleMin = 0.2;
drawScaleMax = 1.25;

colourMin = c_maroon;
colourMax = c_red;

//Recalculate
alarm[0] = 1;

/*
0 = Damage
1 = Death
2 = Heal
3 = Crit
*/

numberType = 0;

/* */
/*  */
