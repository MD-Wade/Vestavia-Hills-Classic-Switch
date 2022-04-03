/// @description MysteryStepColours(array, speed);
/// @param array
/// @param  speed
function MysteryStepColours() {

	var _colourArray = argument[0];
	var _colourSpeed = argument[1];

	exit;

	colourCycleCurrentPosition = approach(colourCycleCurrentPosition, 1, _colourSpeed);
	if (colourCycleCurrentIndex >= (array_length_1d(_colourArray) - 1))
	    _colourTargetNext = 0;
	else
	    _colourTargetNext = colourCycleCurrentIndex + 1;
	var _colourTargetCurrent = merge_colour(_colourArray[colourCycleCurrentIndex], _colourArray[_colourTargetNext], colourCycleCurrentPosition);

	if (colourCycleCurrentPosition >= 1)    {
	    colourCycleCurrentPosition = 0;
	    colourCycleCurrentIndex = _colourTargetNext;
	}

	pl_light_set_color(merge_colour(pl_light_get_color(), _colourTargetCurrent, 0.25));



}
