/// @description Stream

if emitterReady {
    emitterTick = approach(emitterTick, emitterTickMax, g.gameTimescale);
    if (emitterTick >= emitterTickMax)  {
        instance_destroy();
    }

    x = emitterCreator.x + emitterOffsetX;
    y = emitterCreator.y + emitterOffsetY;
    part_particles_create(g.particleSystem, x, y, emitterParticle, emitterCount);
}

