/// @description Initialize

lightEnabled = true;

lightMaskCustom = false;
lightDynamicEnabled = false;

lightFlickerEnabled = false;
lightFlickerTick = 0;
lightFlickerState = false;
lightFlickerTickMin = fs(4);
lightFlickerTickMax = fs(30);
lightFlickerTickTarget = irandom_range(lightFlickerTickMin, lightFlickerTickMax);
lightFlickerDuration = fs(2);
lightFlickerSound = -1;

_pl_lightSurface = -1;

