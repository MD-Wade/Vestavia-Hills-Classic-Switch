/// @description EditorInitGUI();
function EditorInitGUI() {

	guiBorder = 12;
	guiWidth = display_get_gui_width();
	guiHeight = display_get_gui_height();
	guiAreaWidth = (guiWidth - (guiBorder * 2));
	guiAreaHeight = ((guiHeight * 0.2) - (guiBorder * 2));
	guiArea_x1 = guiBorder;
	guiArea_y1 = guiHeight - (guiAreaHeight + guiBorder);
	guiArea_x2 = guiArea_x1 + guiAreaWidth;
	guiArea_y2 = guiArea_y1 + guiAreaHeight;

	guiButtonScale = (guiAreaHeight - (guiBorder * 2)) / (sprite_get_height(uiButtonEditor) * 3);
	guiButtonWidth = sprite_get_width(uiButtonEditor) * guiButtonScale;
	guiButtonHeight = sprite_get_height(uiButtonEditor) * guiButtonScale;

	guiTextboxWidth = guiButtonWidth * 4;
	guiTextboxHeight = guiButtonHeight;
	guiTextboxX[0] = (guiArea_x1 + guiBorder + guiButtonWidth);
	guiTextboxY[0] = (guiArea_y1 + guiBorder);
	guiTextboxID[0] = EditorExecuteTextboxAdd(guiTextboxX[0], guiTextboxY[0], guiTextboxWidth, guiTextboxHeight);

	guiButtonX[0] = guiArea_x1 + guiBorder;
	guiButtonY[0] = guiArea_y1 + guiBorder;
	guiButtonX[1] = guiButtonX[0] + guiTextboxWidth + guiButtonWidth;
	guiButtonY[1] = guiButtonY[0];
	guiButtonX[2] = guiButtonX[0];
	guiButtonY[2] = guiButtonY[0] + guiButtonHeight;
	guiButtonX[3] = guiButtonX[2] + guiButtonWidth;
	guiButtonY[3] = guiButtonY[2];
	guiButtonX[4] = guiButtonX[1] + guiButtonWidth;
	guiButtonY[4] = guiButtonY[1];
	guiButtonCount = 5;

	guiLabelX[0] = mean(guiButtonX[0], guiButtonX[1] + guiButtonWidth);
	guiLabelY[0] = guiButtonY[2] + guiButtonHeight + 4;
	guiLabelString[0] = "OBJECTS";

	for (var i = 0; i < guiButtonCount; i ++)   {
	    EditorExecuteButtonAdd(guiButtonX[i], guiButtonY[i], guiButtonWidth, guiButtonHeight, i, i);
	}



}
