/// @description MenuDrawCredits();
function MenuDrawCredits() {

	creditsOffsetY -= creditsSpeed;
	var _posX = room_width / 2;
	var _posY = creditsOffsetY;
	var _drawWave = wave(-8, 8, 4, 0);

	draw_set_font(fontCredits);
	for (var i = 0; i < array_height_2d(creditsArray); i ++)    {
	    var _titleString = creditsArray[i, 0];
	    var _subtitleString = creditsArray[i, 1];
	    var _titleHeight = (string_height(string_hash_to_newline(_titleString)) * creditsScaleTitle);
	    var _subtitleHeight = (string_height(string_hash_to_newline(_subtitleString)) * creditsScaleSubtitle);
	    draw_text_parameters(fa_center, fa_top, _posX, _posY, _titleString, 1, creditsColourTitle, _drawWave, creditsScaleTitle, 0);
	    _posY += _titleHeight;
	    draw_text_parameters(fa_center, fa_top, _posX, _posY, _subtitleString, 1, creditsColourSubtitle, _drawWave, creditsScaleSubtitle, 0);
	    _posY += (_subtitleHeight + creditsBorder);
    
	    //Finish
	    if (i >= (array_height_2d(creditsArray) - 1))   {
	        if (_posY <= -32)
	            creditsFinished = true;
	    }
	}



}
