/// @description Initialize

event_inherited();
pl_light_init_dynamic(256, merge_colour(c_white, c_yellow, 0.2), 0.85);

soundIndex = -1;
soundEnabled = !g.settingWeb;
parallaxOffset = -16;
lightSwitchIndex = -1;

