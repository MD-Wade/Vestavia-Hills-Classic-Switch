/// @description Initialize

//Lighting
lightEnabled = true;
lightMaskCustom = false;
lightDynamicEnabled = true;
pl_light_init_dynamic(192, c_white, 0.8);

//Colours
colourBlendInvalid = 0;
colourBlendUse = 0;
colourBlendRecharge = 0;
colourIndexInvalid = c_red;
colourIndexUse = c_orange;
colourIndexRecharge = c_yellow;

//Arrow
arrowScale = 1.5;
arrowBorder = 12;
arrowTween = 0;

//Animation
image_speed = 0;
image_index = 0;
animSpeed = 0.2;

//Sound
soundIndexCurrent = -1;
soundIndexBegin = sndMysteryBegin;
soundIndexFinish = sndMysteryFinish;
soundDistance = 192;

//Mystery Box Properties
mysteryCostBase = 400;
mysteryCostIncrement = 200;
mysteryUseMap = ds_map_create();
mysteryTick = 0;
mysteryTickMax = floor(fs(audio_sound_length(soundIndexBegin)));
mysteryTickRandomMax = fs(0.05);
mysteryTickRandom = 0;
mysteryTickPresent = 0;
mysteryTickPresentMax = fs(8);
mysteryGunChanceBase = 0.56;
mysteryGunChance = mysteryGunChanceBase;

//Colours
colourArrayNormal[0] = c_white;
colourArrayNormal[1] = c_yellow;
colourArrayNormal[2] = c_orange;
colourArrayOpening[0] = c_red;
colourArrayOpening[1] = c_yellow;
colourArrayOpening[2] = c_white;
colourArrayOpening[3] = c_yellow;
colourCycleSpeed = 0.2 * g.gameTimescale;
event_user(1);

//States
enum MYSTERY_STATES {
    Normal, Opening, Item
}
stateCurrent = MYSTERY_STATES.Normal;

//Weapon Render
weaponIndex = WeaponReturnRandom();
weaponAnimIndex = WeaponReturnFrame(weaponIndex);
weaponAnimX = mean(bbox_left, bbox_right);
weaponAnimY = mean(bbox_top, bbox_bottom);
weaponAnimScale = 1;
weaponAnimAngleBegin = image_angle - (180 * 5);
weaponAnimAngleEnd = image_angle;
weaponAnimAngleCurrent = image_angle - 180;
weaponAnimColour = c_white;
weaponAnimAlpha = 0;

