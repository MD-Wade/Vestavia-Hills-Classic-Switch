/// @description GameExecuteTimescaleUpdate();
function GameExecuteTimescaleUpdate() {

	if (g.settingWeb)   {
	    g.gameTimescaleBase = 1.0;
	    room_speed = 60;
	}   else    {
	    g.gameTimescaleBase = room_speed / 60;
	}

	g.gameTimescale = g.gameTimescaleBase;



}
