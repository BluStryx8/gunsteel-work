/// @description Classes
image_xscale = 1;
image_yscale = 1;

if (position_meeting(mouse_x, mouse_y, id))
{
	if (!highlight)
	{
		audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
		audio_stop_sound(snd_reload_eject_clip);
		audio_play_sound(snd_reload_eject_clip, 1, false);
	}
	highlight = true;
	if (mouse_check_button_released(mb_left))
	{
		master_id.p_weapon = weapon_id;
		audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
		audio_stop_sound(snd_reload_eject_clip);
		audio_play_sound(snd_reload_clip, 1, false);
	}
}
else highlight = false;
if (master_id.p_weapon == weapon_id) highlight = true;