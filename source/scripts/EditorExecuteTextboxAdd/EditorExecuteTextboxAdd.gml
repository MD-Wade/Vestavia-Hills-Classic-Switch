/// @description EditorExecuteTextboxAdd(x, y, width, height, frame, function);
/// @param x
/// @param  y
/// @param  width
/// @param  height
/// @param  frame
/// @param  function
function EditorExecuteTextboxAdd() {

	var _textboxPosX = argument[0];
	var _textboxPosY = argument[1];
	var _textboxWidth = argument[2];
	var _textboxHeight = argument[3];

	var _idTextbox = instance_create(0, 0, objEditorTextbox);
	_idTextbox.textboxArea_x1 = _textboxPosX;
	_idTextbox.textboxArea_y1 = _textboxPosY;
	_idTextbox.textboxArea_x2 = _textboxPosX + _textboxWidth;
	_idTextbox.textboxArea_y2 = _textboxPosY + _textboxHeight;
	_idTextbox.textboxAreaWidth = _textboxWidth;
	_idTextbox.textboxAreaHeight = _textboxHeight;

	return _idTextbox;



}
