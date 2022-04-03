/// @description Run Variables

//Health and Breaking
if windowBarricaded {
    if (windowHealth <= 0)  {
        windowBarricaded = false;
        sound_here(sndBarricadeBreak, 256, false, rr(0.96, 1.0));
    }
}   else    {
    if (windowHealth > 0)   {
        sound_here(sndBarricadeFinish, 128, false, rr(0.95, 1.0));
        windowBarricaded = true;
    }
}

//Update Index
if (windowBarricaded)   {
    image_index = 1;
    interactionMessage = interactionMessageBase;
}   else    {
    image_index = 0;
    interactionMessage = interactionMessageBarricade;
}

