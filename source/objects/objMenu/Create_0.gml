/// @description Initialize

enum MENU_STATES    {
    Normal, Typing, Fade, Credits
}

enum MENU_TYPES {
    MAIN, PLAY, OPTIONS, VIDEO_OPTIONS, AUDIO_OPTIONS, CONTROLS, GAMEPAD_CONFIGURATION, MISCELLAENOUS_OPTIONS,
}

enum MENU_FADE_ACTIONS  {
    Begin, Credits, Quit
}


stateCurrent = MENU_STATES.Fade;

MenuInitCredits();

menuSurface = -1;

fadeDirection = false;
fadeAction = MENU_FADE_ACTIONS.Begin;

gaussianRadius = 32;
gaussianEnabled = false;
uniformGaussianSize = shader_get_uniform(shdGaussian, "size");

shadowTick = 0;
shadowTickMax = 1;
shadowOffsetX = irandom(4) * choose(-1, 1);
shadowOffsetY = irandom(4) * choose(-1, 1);

menuCursorX = room_width / 2;
menuCursorY = room_height / 2;

menuSelected = 0;
menuIndex = MENU_TYPES.MAIN;
menuTypeBlink = false;
menuTypeAdd = "";
alarm[0] = fs(0.25);

MenuInitArrays();

//Mouse Input
mouseThreshold = 2;
mousePreviousX = 0;
mousePreviousY = 0;

//Music
GameExecuteMusicPlayIndex(bgmGuilty);

//Background
instance_create_depth(0, 0, depth + 1, objBackgroundMenu);

