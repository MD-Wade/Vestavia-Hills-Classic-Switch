/// @description Initialize

if (os_type != os_switch)	{
	instance_destroy();
	exit;
}

/// @description Load videofile.
if (shaders_are_supported() && shader_is_compiled(shdVideo))
{
	doit = true;
	vol = 1;
	video_width = 1280;
	video_height = 720;
	video_sampler = shader_get_sampler_index(shdVideo, "v_chroma");


	video_open("vhcswitchbackground.mp4");
	video_set_volume(vol);

	show_debug_message("video init ok");
}
else { show_debug_messsage("video error fail"); doit = false; instance_destroy(); } // oh no.