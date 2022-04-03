/// @description EditorButtonExecuteAction(function);
/// @param function
function EditorButtonExecuteAction() {

	var _inFunction = argument[0];

	with (objEditorButton)
	    buttonToggled = false;
	buttonToggled = true;

	switch (_inFunction) {
	    case 0:
	        objEditor.editorObjectEntry = wrap(objEditor.editorObjectEntry - 1, 0, objEditor.dsGridObjectsHeight - 1);
	        break;
	    case 1:
	        objEditor.editorObjectEntry = wrap(objEditor.editorObjectEntry + 1, 0, objEditor.dsGridObjectsHeight - 1);
	        break;
	    case 2:
	        break;
	    case 3:
	        break;
        
	    case 4:
	        with (objEditor)
	            stateCurrent = EDITOR_STATES.WALL_PLACE;
	        break;
	}



}
