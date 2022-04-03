/// @description Run Variables

var _actorNearest = instance_nearest(x, y, parActor);

if (distance_to_object(_actorNearest) <= 128)
    spawnUsed = false;

