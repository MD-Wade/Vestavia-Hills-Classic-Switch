/// @description EditorStepObjects();
function EditorStepObjects() {

	editorObjectName = dsGridObjects[# 0, editorObjectEntry];
	editorObjectIndex = dsGridObjects[# 1, editorObjectEntry];
	editorObjectSprite = dsGridObjects[# 2, editorObjectEntry];

	//Update Textbox
	guiTextboxID[0].textboxString = editorObjectName;

	//Rotation
	if (inputScroll != 0)   {
	    if (inputScrollType == 1)   {
	        editorObjectRotation = (editorObjectRotation + (15 * inputScroll)) mod 360;
	    }
	}

	editorObjectPlaceValid = !editorSensorCollisionInstance and inputMouseOverlap;



}
