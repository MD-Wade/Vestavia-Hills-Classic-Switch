/// @description EditorStepSensor();
function EditorStepSensor() {

	editorSensorID.x = inputMouseGridX;
	editorSensorID.y = inputMouseGridY;
	editorSensorID.sprite_index = editorObjectSprite;

	with (editorSensorID)   {
	    other.editorSensorCollisionInstance = place_meeting(x, y, objEditorInstance);
	}



}
