/// @description Run Variables

drawOffsetY = approach(drawOffsetY, 0, irandom(drawOffsetYRandom));

if keyboard_check(vk_space)
    splashSkipAmount = approach(splashSkipAmount, splashSkipAmountMax, 1);
else
    splashSkipAmount = approach(splashSkipAmount, 0, 1);
    
if (splashSkipAmount >= splashSkipAmountMax)    {
    splashFade = true;
}