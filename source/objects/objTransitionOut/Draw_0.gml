/// @description Draw Overlay

draw_set_alpha(Alpha);
draw_set_colour(c_black);
draw_rectangle(0, 0, room_width, room_height, 0);
draw_set_alpha(1);

audio_set_master_gain(0, 1 - Alpha);

if !Ready exit;

Alpha = clamp(Alpha + Speed, 0, 1);

if Alpha >= 1   {
    audio_set_master_gain(0, 1);
    room_goto(Target);
    instance_destroy();
}

