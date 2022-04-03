/// @description Run Variables

interpAmount = approach(interpAmount, interpDirection, interpSpeed * g.gameTimescale);

//Begin
if (interpAmount >= 1)  {
    if (interpDirection == 1)   {
        interpTick = approach(interpTick, interpTickMax, g.gameTimescale);
        if (interpTick >= interpTickMax)    {
            interpDirection = -1;
        }
    }
}

//End
if (interpAmount <= 0)  {
    if (interpDirection <= -1)  {
        instance_destroy();
    }
}

