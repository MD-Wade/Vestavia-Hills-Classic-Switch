/// @description Initialize

g.settingWeb = false;

listSplashes = ds_list_create();
ds_list_add(listSplashes, 0);
ds_list_add(listSplashes, 1);

splashCount = ds_list_size(listSplashes);
splashIndex = 0;

splashTick = 0;
splashTickMax = fs(2.5);
splashAlpha = 0;
splashAlphaDirection = -1;
splashEnded = false;
splashFade = false;
splashSkipAmount = 0;
splashSkipAmountMax = 35;

drawOffsetYStart = (sprite_height * -1);
drawOffsetY = drawOffsetYStart;
drawOffsetYRandom = 4;

image_speed = 0;
image_index = 0;
x = room_width / 2;
y = room_height / 2;

drawAngle = -90;
vcrUniformResolution = shader_get_uniform(shdVCR, "iResolution"); 
vcrUniformTime = shader_get_uniform(shdVCR, "iGlobalTime");
vcrUniformIntensity = shader_get_uniform(shdVCR, "fIntensity");
vcrUniformIntensityAmount = 1.0;
vcrUniformIntensityMinimum = 0.1;

splashSurface = surface_create_clear(room_width, room_height);

sound(sndVHS, rr(0.85, 1.0));
bgmIndex = sound(bgmSplash, rr(0.98, 1.0));
bgmFadeDirection = 1;
bgmFadeAmount = 0;
audio_sound_gain(bgmIndex, bgmFadeAmount, 0);

