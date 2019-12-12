/// @description sets size
if global.settings and (room != rm_mainmenu)
{
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if (!global.settings and room != rm_mainmenu)
{
	instance_destroy();
}

/// @description Select
if (image_index != 5 and image_index < 10) and not (image_index == 1 and room != rm_mainmenu)
	var _hover = true;
else
	var _hover = false;

if (_hover and position_meeting(mouse_x, mouse_y, id) and !master.clicked)
{
	if (!hover)
	{
		sprite_index = spr_main_menu_buttons_select;
		audio_group_set_gain(audiogrp_sounds, global.sound_value, 0);
		audio_stop_sound(snd_reload_eject_clip);
		audio_play_sound(snd_reload_eject_clip, 1, false);
	}
	hover = true;
}
else
{
	sprite_index = spr_main_menu_buttons;
	hover = false;
}