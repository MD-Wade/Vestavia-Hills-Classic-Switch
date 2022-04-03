/// @description Run Variables

if (slowdownReady)  {
    if (slowdownTick < slowdownDuration)    {
        slowdownTick = approach(slowdownTick, slowdownDuration, 1);
        g.gameTimescaleEffect = slowdownScale;
    }   else    {
        g.gameTimescaleEffect = approach(g.gameTimescaleEffect, 1.0, 0.01);
        if (g.gameTimescaleEffect >= 1) {
            g.gameTimescaleEffect = 1;
            
            //End Actions
            switch (slowdownActionEnd)  {
                case 0: //Player Death
                    GameExecuteMusicPlayIndex(bgmConcrete);
                break;
            }
            
            instance_destroy();
        }
    }
}

