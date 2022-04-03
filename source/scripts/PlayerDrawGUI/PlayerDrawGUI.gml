/// @description PlayerDrawGUI();
function PlayerDrawGUI() {

	var _guiShadow = wave(1, 4, 4, 0);

	guiArea_x1 = guiOffsetX;
	guiArea_y1 = guiOffsetY;
	guiArea_x2 = guiArea_x1 + guiWidth;
	guiArea_y2 = guiArea_y1 + guiHeight;
	guiArea_xMiddle = mean(guiArea_x1, guiArea_x2);
	guiArea_YMiddle = mean(guiArea_y1, guiArea_y2);

	if guiEnabled   {
	    guiAlpha = approach(guiAlpha, 1, 0.1);
	    if (stateCurrent == PSTATES.Dead)   {
	        draw_set_font(fontGUI);
	        var _messageScale = 2;
	        var _messageWidth = (((string_width(string_hash_to_newline(guiMessageDeath)) * _messageScale) / 2) + 12);
	        var _messageHeight = (((string_height(string_hash_to_newline(guiMessageDeath)) * _messageScale) / 2) + 12);
	        draw_set_colour(c_black);
	        draw_set_alpha(0.75);
	        draw_rectangle(guiArea_xMiddle - _messageWidth, guiArea_YMiddle - _messageHeight, guiArea_xMiddle + _messageWidth, guiArea_YMiddle + _messageHeight, false);
	        draw_set_alpha(1);
	        draw_rectangle_width(guiArea_xMiddle - _messageWidth, guiArea_YMiddle - _messageHeight, guiArea_xMiddle + _messageWidth, guiArea_YMiddle + _messageHeight, 4);
	        draw_set_alpha(1);
	        draw_text_parameters(fa_center, fa_middle, guiArea_xMiddle, guiArea_YMiddle, guiMessageDeath, 1, merge_colour(c_red, c_maroon, wave(0, 1, 0.35, 0)), wave(1, 6, 2, 0), _messageScale, 0);
	    }   else    {
	        if (WeaponReturnStat("weaponType") == "Gun") {
	            var _guiAmmoString = string(weaponAmmo[weaponSelected]) + "/" + string(WeaponReturnStat("gunReloadClip")) + " RNDS#" + string(weaponAmmoReserve[weaponSelected]) + "/" + string(WeaponReturnStat("gunReloadReserve")) + " RSRV";
	        }   else    {
	            var _guiAmmoString = weaponCurrent[weaponSelected];
	        }
        
	        //Wave Text
	        switch (objGame.waveTypeCurrent)   {
	            case GAME_WAVE_TYPES.Onslaught:
	                var _guiWaveString = "ONSLAUGHT!!";
	                var _guiWaveColour = merge_colour(c_maroon, c_white, wave(0, 1, 0.2, 0));
	                break;
	            default:
	                var _guiWaveString = "WAVE " + string(objGame.waveIndex);
	                var _guiWaveColour = merge_colour(c_red, c_maroon, wave(0, 1, 2, 0));
	                break;
	        }
        
	        draw_set_font(fontGUI);
	        var _guiCashString = "$" + string(GameReturnActorStat("cashAmount"));
	        var _guiMessageWidth = (string_width(string_hash_to_newline(guiMessageString)) + (guiBorder * 1.5)) * guiScale;
	        var _guiMessageHeight = (string_height(string_hash_to_newline(guiMessageString)) + (guiBorder * 1.5)) * guiScale;
	        var _guiWaveWidth = (string_width(string_hash_to_newline(_guiWaveString)) + (guiBorder * 1.5)) * guiScale;
	        var _guiWaveHeight = (string_height(string_hash_to_newline(_guiWaveString)) + (guiBorder * 1.5)) * guiScale;
	        var _guiCashWidth = (string_width(string_hash_to_newline(_guiCashString)) + (guiBorder * 1.5)) * guiScale;
	        var _guiCashHeight = (string_height(string_hash_to_newline(_guiCashString)) + (guiBorder * 1.5)) * guiScale;
	        var _guiAmmoWidth = (string_width(string_hash_to_newline(_guiAmmoString)) + (guiBorder * 1.5)) * guiScale;
	        var _guiAmmoHeight = (string_height(string_hash_to_newline(_guiAmmoString)) + (guiBorder * 1.5)) * guiScale;
        
	        //Lerp
	        statsLerpHealth = lerp(statsLerpHealth, GameReturnActorStat("Health"), 0.1);
	        statsLerpStamina = lerp(statsLerpStamina, GameReturnActorStat("Stamina"), 0.25);
	        guiStaminaFlicker = lerp(guiStaminaFlicker, 0, 0.1);
        
	        //Message Positioning
	        guiMessage_x1 = guiOffsetX + guiBorder;
	        guiMessage_y1 = guiOffsetY + guiHeight - _guiMessageHeight;
	        guiMessage_x2 = guiOffsetX + guiWidth - guiBorder;
	        guiMessage_y2 = guiOffsetY + guiHeight - guiBorder;
	        guiMessage_CenterX = mean(guiMessage_x1, guiMessage_x2);
	        guiMessage_CenterY = mean(guiMessage_y1, guiMessage_y2);
        
	        //Wave Positioning
	        guiWave_x1 = guiOffsetX + guiBorder;
	        guiWave_y1 = guiMessage_y1 - _guiWaveHeight;
	        guiWave_x2 = guiOffsetX + _guiWaveWidth;
	        guiWave_y2 = guiMessage_y1 - guiBorder;
	        guiWave_CenterX = mean(guiWave_x1, guiWave_x2);
	        guiWave_CenterY = mean(guiWave_y1, guiWave_y2);
        
	        //Cash Positioning
	        guiCash_x1 = guiOffsetX + guiBorder;
	        guiCash_y1 = guiWave_y1 - _guiCashHeight;
	        guiCash_x2 = guiOffsetX + _guiCashWidth;
	        guiCash_y2 = guiWave_y1 - guiBorder;
	        guiCash_CenterX = mean(guiCash_x1, guiCash_x2);
	        guiCash_CenterY = mean(guiCash_y1, guiCash_y2);
        
	        //Healthbar Positioning
	        var _barWidth = 192 * guiScale;
	        var _barHeight = 32 * guiScale;
	        var _barTextScale = 0.8 * guiScale;
	        var _healthBarValue = (statsLerpHealth / GameReturnActorStat("healthMax")) * 100;
	        guiHealthBar_x1 = guiOffsetX + guiWidth - guiBorder - _barWidth;
	        guiHealthBar_y1 = guiMessage_y1 - guiBorder - _barHeight;
	        guiHealthBar_x2 = guiOffsetX + guiWidth - guiBorder;
	        guiHealthBar_y2 = guiMessage_y1 - guiBorder;
	        guiHealthBar_CenterX = mean(guiHealthBar_x1, guiHealthBar_x2);
	        guiHealthBar_CenterY = mean(guiHealthBar_y1, guiHealthBar_y2);
        
	        //Stamina Positioning
	        var _staminaWidth = 192 * guiScale;
	        var _staminaHeight = 32 * guiScale;
	        var _staminaBarValue = (statsLerpStamina / GameReturnActorStat("staminaMax")) * 100;
	        guiStaminaBar_x1 = guiHealthBar_x1;
	        guiStaminaBar_y1 = guiHealthBar_y1 - guiBorder - _barHeight;
	        guiStaminaBar_x2 = guiHealthBar_x2;
	        guiStaminaBar_y2 = guiHealthBar_y1 - guiBorder;
	        guiStaminaBar_CenterX = mean(guiStaminaBar_x1, guiStaminaBar_x2);
	        guiStaminaBar_CenterY = mean(guiStaminaBar_y1, guiStaminaBar_y2);
        
	        //Ammo Positioning
	        guiAmmo_x1 = guiOffsetX + guiWidth - guiBorder - _guiAmmoWidth;
	        guiAmmo_y1 = guiStaminaBar_y1 - guiBorder - _guiAmmoHeight;
	        guiAmmo_x2 = guiOffsetX  + guiWidth - guiBorder;
	        guiAmmo_y2 = guiStaminaBar_y1 - guiBorder;
	        guiAmmo_CenterX = mean(guiAmmo_x1, guiAmmo_x2);
	        guiAmmo_CenterY = mean(guiAmmo_y1, guiAmmo_y2);
        
	        //Draw Message
	        draw_set_alpha(guiMessageAlpha * guiAlpha);
	        nineslice(uiNsTextbox, guiMessage_x1, guiMessage_y1, guiMessage_x2, guiMessage_y2);
	        draw_text_parameters(fa_center, fa_middle, guiMessage_CenterX, guiMessage_CenterY, guiMessageString, guiMessageAlpha * guiAlpha, c_white, _guiShadow, guiScale, 0);
	        draw_set_alpha(guiAlpha);
        
	        //Draw Ammo
	        nineslice(uiNsTextbox, guiAmmo_x1, guiAmmo_y1, guiAmmo_x2, guiAmmo_y2);
	        draw_text_parameters(fa_center, fa_middle, guiAmmo_CenterX, guiAmmo_CenterY, _guiAmmoString, guiAlpha, merge_colour(c_red, c_maroon, wave(0, 1, 0.35, 0)), _guiShadow, guiScale, 0);
        
	        //Draw Waves
	        nineslice(uiNsTextbox, guiWave_x1, guiWave_y1, guiWave_x2, guiWave_y2);
	        draw_text_parameters(fa_center, fa_middle, guiWave_CenterX, guiWave_CenterY, _guiWaveString, guiAlpha, _guiWaveColour, _guiShadow, guiScale, 0);
        
	        //Draw Cash
	        nineslice(uiNsTextbox, guiCash_x1, guiCash_y1, guiCash_x2, guiCash_y2);
	        draw_text_parameters(fa_center, fa_middle, guiCash_CenterX, guiCash_CenterY, _guiCashString, guiAlpha, c_green, _guiShadow, guiScale, 0);
        
	        //Draw Healthbar
	        draw_progressbar(guiHealthBar_x1, guiHealthBar_y1, guiHealthBar_x2, guiHealthBar_y2, _healthBarValue, 4, c_red);
	        draw_text_parameters(fa_center, fa_middle, guiHealthBar_CenterX, guiHealthBar_CenterY, "HEALTH", 1, c_white, _guiShadow, _barTextScale, 0);
        
	        //Draw Stamina Bar
	        draw_progressbar(guiStaminaBar_x1, guiStaminaBar_y1, guiStaminaBar_x2, guiStaminaBar_y2, _staminaBarValue, 4, merge_colour(c_maroon, merge_colour(c_maroon, c_white, wave(0, 1, 0.1, 0)), guiStaminaFlicker));
	        draw_text_parameters(fa_center, fa_middle, guiStaminaBar_CenterX, guiStaminaBar_CenterY, "STAMINA", guiAlpha, c_white, _guiShadow, _barTextScale, 0);
        
	        //Initialize Weapon Slots
	        var _posX = guiWave_x2 + guiBorder;
	        var _posY = guiWave_y2;
	        var _slotWidth = 48 * guiScale;
	        var _slotHeight = 48 * guiScale;
	        var _weaponBaseScale = 2 * guiScale;
        
	        //Draw Weapon Slots
	        for (var i = 0; i < (weaponSlots); i ++)    {
	            var _x1 = _posX;
	            var _y1 = _posY - _slotHeight;
	            var _x2 = _posX + _slotWidth;
	            var _y2 = _posY;
	            var _xCenter = mean(_x1, _x2);
	            var _yCenter = mean(_y1, _y2);
        
	            if (i != weaponSelected)    {
	                var _colourIndex = c_gray;
	                var _spriteIndex = uiNsWeaponSlot;
	                var _tweenTime = 2;
	                var _weaponScale = _weaponBaseScale;
	            }   else    {
	                var _colourIndex = c_white;
	                var _spriteIndex = uiNsWeaponSlotSelected;
	                var _tweenTime = 1;
	                var _weaponScale = _weaponBaseScale + 0.2;
	            }
        
	            nineslice(_spriteIndex, _x1, _y1, _x2, _y2);
	            draw_sprite_ext(sprWeapons, WeaponReturnFrame(weaponCurrent[i]), _xCenter, _yCenter, _weaponScale, _weaponScale, wave(42, 48, _tweenTime, 1), _colourIndex, guiAlpha);
	            _posX += (_slotWidth + guiBorder);
	        } 
	    }
    
	    //Reset
	    draw_set_alpha(1);
	    draw_set_colour(c_white);
	}



}
