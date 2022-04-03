/// @description Initialize

//Randomize
FurnitureInitRandomize();

//Initialize Light
event_inherited();
pl_light_init_dynamic(128, merge_colour(c_white, c_yellow, 0.2), 0.4);

