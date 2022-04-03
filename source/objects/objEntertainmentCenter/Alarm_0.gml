/// @description New Colour

if instance_exists(lightIndex)  {
    lightIndex.lightColour = choose(c_blue, c_aqua, c_navy, c_white, c_gray);
    alarm[0] = fs(2.5) * g.gameTimescale;
}

