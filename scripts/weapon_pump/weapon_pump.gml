/// @desc Changes fire mode
if (mouse_check_button_pressed(mb_right))
	with (obj_player)
		if (fire_cooldown == 0)
		{
			audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
			audio_play_sound(snd_reload_shotgun, 1, false);
			fire_cooldown = pump_time;
			pump = -1;
		}