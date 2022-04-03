/// @description Draw

if !surface_exists(splashSurface)    {
    splashSurface = surface_create_clear(room_width, room_height);
}

surface_set_target(splashSurface);
draw_clear_alpha(c_black, 0);
draw_sprite_ext(sprite_index, image_index, x, y + drawOffsetY, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
surface_reset_target();

bgmFadeAmount = approach(bgmFadeAmount, bgmFadeDirection, 0.02);
audio_sound_gain(bgmIndex, bgmFadeAmount, 0);

shader_set(shdVCR);
if (drawOffsetY >= 0)   {
    vcrUniformIntensityAmount = approach(vcrUniformIntensityAmount, vcrUniformIntensityMinimum, 0.01);
    if (vcrUniformIntensityAmount <= vcrUniformIntensityMinimum)   {
        splashTick = approach(splashTick, splashTickMax, 1);
        if (splashTick >= splashTickMax)    {
            splashTick = 0;
            if (splashIndex < (splashCount - 1))  {
                splashIndex ++;
                drawOffsetY = drawOffsetYStart;
                vcrUniformIntensityAmount = 1.0;
                sound(sndVHS, rr(0.8, 1.0));
                image_index = listSplashes[| splashIndex];
            }   else    {
                splashFade = true;
            }
        }
    }
}

if splashFade   {
    if !splashEnded {
            splashEnded = true;
            bgmFadeDirection = 0;
            fade_to(roomMenu);
        }
}

shader_set_uniform_f(vcrUniformIntensity, vcrUniformIntensityAmount);
shader_set_uniform_f(vcrUniformResolution, room_width, room_height, 0); 
shader_set_uniform_f(vcrUniformTime, current_time / 1000);
draw_surface(splashSurface, 0, 0);
shader_reset();

