/// @description State Machine

switch (stateCurrent)   {
    case MENU_STATES.Normal:
        MenuStateNormal();
        break;
        
    case MENU_STATES.Typing:
        MenuStateTyping();
        break;
        
    case MENU_STATES.Fade:
        MenuStateFade();
        break;
        
    case MENU_STATES.Credits:
        MenuStateCredits();
        break;
}

//Update Mouse
menuCursorX = clamp(menuCursorX, 0, room_width);
menuCursorY = clamp(menuCursorY, 0, room_height);

if keyboard_check_pressed(vk_anykey)    {
    if keyboard_check_pressed(cheatArray[0, cheatArrayPos]) {
        if (cheatArrayPos >= (array_length_2d(cheatArray, 0) - 1))    {
            sound(sndUIYeah);
            g.settingPlayerCount = 2;
            g.settingLightingQuality = 0;
            cheatArrayPos = 0;
            GameExecuteAchievement(0)
            GameExecuteAchievement(1)
        }   else    {
            cheatArrayPos ++;
            ;
        }
    }   else    {
        cheatArrayPos = 0;
    }
}

