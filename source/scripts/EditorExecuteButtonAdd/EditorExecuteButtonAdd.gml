/// @description EditorExecuteButtonAdd(x, y, width, height, frame, function);
/// @param x
/// @param  y
/// @param  width
/// @param  height
/// @param  frame
/// @param  function
function EditorExecuteButtonAdd() {

	var _buttonPosX = argument[0];
	var _buttonPosY = argument[1];
	var _buttonWidth = argument[2];
	var _buttonHeight = argument[3];
	var _buttonFrame = argument[4];
	var _buttonFunction = argument[5];

	var _idButton = instance_create(0, 0, objEditorButton);
	_idButton.buttonArea_x1 = _buttonPosX + 1;
	_idButton.buttonArea_y1 = _buttonPosY + 1;
	_idButton.buttonArea_x2 = _buttonPosX + _buttonWidth - 1;
	_idButton.buttonArea_y2 = _buttonPosY + _buttonHeight - 1;
	_idButton.buttonAreaWidth = _buttonWidth;
	_idButton.buttonAreaHeight = _buttonHeight;
	_idButton.buttonFrame = _buttonFrame;
	_idButton.buttonFunction = _buttonFunction;

	return _idButton;



}
