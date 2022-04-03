/// @description Update State

GameExecuteTimescaleUpdate();

switch (room)   {
    case roomInit:
    break;

    case roomMenu:
    break;
    
    case roomEditor:
    break;

    case roomGame:
    case roomMapApartment1:
        GameExecuteStart();
    break;
}

