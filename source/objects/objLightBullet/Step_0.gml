/// @description Run Variables

event_inherited();
event_user(0);

if creatorID != noone   {
    x = creatorID.x;
    y = creatorID.y;
}

if (interpBlend <= 0.05)
    instance_destroy();

