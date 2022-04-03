/// @description MenuDrawMenu();
function MenuDrawMenu() {

	//Initialize
	var _shadowLength = wave(1, 3, 1, 0);
	var _colourMix = wave(0, 1, 3, 0);
	var _scaleBase = 1;
	var _Border = (18 * _scaleBase);
	var _posX = _Border;
	var _posY = room_height - _Border;
	drawAlpha = clamp(1 - (gaussianRadius / 16), 0, 1);

	shadowTick = approach(shadowTick, shadowTickMax, 1);
	if shadowTick >= shadowTickMax  {
	    shadowTick = 0;
	    shadowOffsetX = random(1) * choose(-1, 1);
	    shadowOffsetY = random(1) * choose(-1, 1);
	}

	draw_set_font(fontMenu);
	for (var i = array_length_2d(menuArray, menuIndex) - 1; i >= 0; i --)    {
	    var _String = menuArray[menuIndex, i];
	    if (menuSelected == i)  {
	        var _Colour = merge_colour(c_blue, c_aqua, _colourMix);
	        var _shadowOffsetX = shadowOffsetX;
	        var _shadowOffsetY = shadowOffsetY;
	        if stateCurrent == MENU_STATES.Typing   {
	            _String += " " + keyboard_string + menuTypeAdd;
	        }
	    }   else    {
	        var _Colour = merge_colour(c_white, c_gray, _colourMix);
	        var _shadowOffsetX = _shadowLength;
	        var _shadowOffsetY = _shadowLength;
	    }
	    var _Scale = _scaleBase;
	    draw_text_parameters_shadow(fa_left, fa_bottom, _posX, _posY, _String, drawAlpha, _Colour, _shadowOffsetX, _shadowOffsetY, _Scale);
	    _posY -= (string_height(string_hash_to_newline(_String)) * 1.15) * _Scale;
	}

	//Draw Version
	draw_set_font(fontCredits);
	draw_text_parameters(fa_right, fa_bottom, room_width - 32, room_height - 32, "Version " + string(gameVersion), 1, c_purple, _shadowLength, 1, 0);

	//Draw Logo
	var _spriteScale = 0.38 + wave(-0.01, 0.01, 25, 0);
	var _spriteAngle = wave(-0.5, 0.5, 16, 0);
	var _spriteWidth = sprite_get_width(uiMenuLogo) * _spriteScale;
	var _spriteHeight = sprite_get_height(uiMenuLogo) * _spriteScale;
	var _posX = (room_width - ((_spriteWidth / 2) + 8));
	var _posY = (_spriteHeight / 2) + 8;
	draw_sprite_ext(uiMenuLogo, 0, _posX, _posY, _spriteScale, _spriteScale, _spriteAngle, c_white, drawAlpha);

	//Draw Cursor
	//draw_sprite_ext(uiCursorMenu, 0, menuCursorX, menuCursorY, 1, 1, 0, c_white, 1);



}
