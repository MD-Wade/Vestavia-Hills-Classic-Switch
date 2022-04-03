/// @description Run Variables

switch (stateCurrent)   {
    case EDITOR_STATES.OBJECT_PLACE:
        EditorStepInput();
        EditorStepObjects();
        EditorStepSensor();
        EditorStepCamera();
        break;
        
    case EDITOR_STATES.WALL_PLACE:
        EditorStepInput();
        EditorStepWalls();
        EditorStepCamera();
        break;
}

print(stateCurrent);

