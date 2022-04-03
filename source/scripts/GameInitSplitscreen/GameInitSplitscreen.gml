/// @description GameInitSplitscreen();
function GameInitSplitscreen() {

	viewWidth = __view_get( e__VW.WView, 0 );
	viewHeight = __view_get( e__VW.HView, 0 );
	portWidth = __view_get( e__VW.WPort, 0 );
	portHeight = __view_get( e__VW.HPort, 0 );

	switch (g.settingPlayerCount)   {
	    case 1:
	        break;
        
	    case 2:
	        viewWidth *= 1.25;
	        viewHeight *= 1.25;
	        __view_set( e__VW.Visible, 1, true );
        
	        __view_set( e__VW.WView, 0, viewWidth );
	        __view_set( e__VW.HView, 0, viewHeight / 2 );
	        __view_set( e__VW.XPort, 0, 0 );
	        __view_set( e__VW.YPort, 0, 0 );
	        __view_set( e__VW.WPort, 0, portWidth );
	        __view_set( e__VW.HPort, 0, portHeight / 2 );

	        __view_set( e__VW.WView, 1, viewWidth );
	        __view_set( e__VW.HView, 1, viewHeight / 2 );
	        __view_set( e__VW.XPort, 1, 0 );
	        __view_set( e__VW.YPort, 1, portHeight / 2 );
	        __view_set( e__VW.WPort, 1, portWidth );
	        __view_set( e__VW.HPort, 1, portHeight / 2 );
	        break;
	}



}
