/// @description State Machine

if effectReady  {
    switch (stateCurrent)   {
        case 0: //Slow Time
            g.gameTimescaleMessage = approach(g.gameTimescaleMessage, 0.1, 0.06);
            
            //Blur
            if (!g.settingWeb)  {
                var _gaussianRadius = -1;
                with (objShaders)   {
                    gaussianEnabled = true;
                    gaussianRadius = approach(gaussianRadius, other.gaussianRadiusTarget, 0.4);
                    _gaussianRadius = gaussianRadius;
                }
            }   else    {
                var _gaussianRadius = gaussianRadiusTarget;
            }
            
            //Continue Once Criteria Met
            if (_gaussianRadius >= gaussianRadiusTarget)    {
                if ((g.gameTimescaleMessage <= 0.1))   {
                    stateCurrent = 1;
                }
            }
            break;
                
        case 1: //Print Letters
            letterTick = approach(letterTick, letterTickMax, 1);
            if (letterTick >= letterTickMax)    {
                if (letterIndex < (letterStringCount))   {
                    sound(sndUILetter, 4);
                    letterEnabled[letterIndex] = true;
                    letterIndex ++;
                    letterTick = 0;
                }   else    {
                    gaussianRadiusTarget = 0;
                    
                    delayTick = approach(delayTick, delayTickLetter, 1);
                    if delayTick >= (delayTickLetter)   {
                        delayTick = 0;
                        drawAlphaTarget = 0;
                        stateCurrent = 2;
                    }
                }
            }
            break;
            
        case 2: //Finish
            if (drawAlpha <= 0)    {
            
                //Unblur
                var _gaussianRadius = -1;
                with (objShaders)   {
                    gaussianRadius = approach(gaussianRadius, other.gaussianRadiusTarget, 0.4);
                    _gaussianRadius = gaussianRadius;
                    
                    if (gaussianRadius <= 0)
                        gaussianEnabled = false;
                }
                
                //Revert to Normal Time
                g.gameTimescaleMessage = approach(g.gameTimescaleMessage, 1.0, 0.0185);
                
                //Finish Once Criteria Met
                if (g.gameTimescale >= g.gameTimescaleBase)   {
                    if (_gaussianRadius <= gaussianRadiusTarget) or (flagWeb)    {
                        switch (effectType) {
                            case 0:
                                with (objGame)  {
                                    onslaughtEnabled = true;
                                }
                                break;
                                
                            case 1:
                                with (objGame)  {
                                    onslaughtEnabled = false;
                                }
                                break;
                        }
    
                        instance_destroy();
                    }
                }   
        }
            break;
    }
}

