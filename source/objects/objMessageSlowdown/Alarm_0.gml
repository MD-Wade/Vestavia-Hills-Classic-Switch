/// @description Prepare

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

draw_set_font(fontOnslaught);

colorMain = c_red;
colorSub = c_maroon;
delayTick = 0;
delayTickLetter = fs(0.4);

//Determine Type
switch (effectType) {
    case -1:
        letterString = "ERROR";
    break;

    case 0:
        letterString = "FINISH";
        GameExecuteMusicPlay();
        
        //Achievement
        if (objGame.waveTypeCurrent == GAME_WAVE_TYPES.Onslaught)   {
            if (g.gameDifficulty >= 3)  {
                if (g.flagNonlethal)    {
                    GameExecuteAchievement(ACHIEVEMENTS.BOB_AND_WEAVE);
                }
            }
        }
        
        objGame.waveTypeCurrent = GAME_WAVE_TYPES.Standard;
    break;

    case 1:
        letterString = "ONSLAUGHT";
        g.flagNonlethal = true;
        GameExecuteMusicPlayIndex(bgmGritted);
        objGame.waveTypeCurrent = GAME_WAVE_TYPES.Onslaught;
    break;

    case 2:
        letterString = "BEHEMOTH";
        GameExecuteEnemySpawn(objEnemyBehemoth);
        GameExecuteMusicPlayIndex(bgmGoliath);
        objGame.waveTypeCurrent = GAME_WAVE_TYPES.Boss;
    break;
        
    case 3:
        letterString = "NIGHTMARE ONSLAUGHT";
        g.flagNonlethal = true;
        colorMain = c_maroon;
        colorSub = c_fuchsia;
        letterTime = 4;
        GameExecuteMusicPlayIndex(bgmHopeless);
        objGame.waveTypeCurrent = GAME_WAVE_TYPES.Onslaught;
    break;
        
}

letterStringCount = string_length(letterString) + 1;
letterStringScale = 5;
letterStringWidth = string_width(string_hash_to_newline(letterString)) * letterStringScale;
letterStringHeight = string_height(string_hash_to_newline(letterString)) * letterStringScale;
letterTick = 0;
letterTickMax = letterTime;
letterIndex = 1;
letterBorder = 96;
letterX1 = letterBorder;
letterX2 = guiWidth - letterBorder;

for (var i = 1; i < (letterStringCount); i ++)  {
    var _interpAmount = (i / (letterStringCount));
    letterX[i] = lerp(letterX1, letterX2, _interpAmount);
    letterY[i] = guiHeight / 2;
    letterShake[i] = letterShakeAmount;
    letterEnabled[i] = false;
}

drawBegin = false;
drawRectangle_x1 = 0;
drawRectangle_y1 = 0;
drawRectangle_x2 = 0;
drawRectangle_y2 = 0;
drawRectangleColour = merge_colour(c_black, c_dkgray, 0.2);
drawRectangleHeight = (letterStringHeight + 4) / 2;
drawBorder = 4;
drawAlpha = 0;
drawAlphaTarget = 1;
drawAlphaSpeed = 0.1;
drawOffsetX = 0;
drawOffsetY = 0;
drawOffsetYTarget = (guiHeight / 2) + (drawRectangleHeight);

gaussianRadiusTarget = 16;

effectReady = true;

sound(sndUIOnslaught);

