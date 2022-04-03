/// @description Initialize

//Lighting
lightEnabled = true;
lightMaskCustom = false;
lightDynamicEnabled = true;
pl_light_init_dynamic(32, c_red, 1);

//Drawing
drawColour = c_white;
colourBlendUse = 0;
colourBlendInvalid = 0;
colourBlendRecharge = 0;
colourIndexUse = c_green;
colourIndexInvalid = c_red;
colourIndexRecharge = c_orange;

hStationCost = 1200;
hStationCostIncrement = 1200;
hStationChargeMax = 100;
hStationCharge = hStationChargeMax;
hStationUseRate = 10;

//Arrow
arrowScale = 1.5;
arrowBorder = 12;
arrowTween = 0;

soundDistance = 192;

interactionMessage = "[RMB] TO HEAL - (" + string(hStationCharge) + ") REMAINING";

