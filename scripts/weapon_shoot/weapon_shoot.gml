/// @desc Fire
if room != rm_settings
{
	with (obj_player)
	{
		// Check Firing
		if (ammo > 0 or firing)
		{
			if ((atk_type == "Automatic" and mouse_check_button(mb_left) and fire_cooldown == 0 and fire == 0) or
			(atk_type == "Semi-automatic" and mouse_check_button_pressed(mb_left) and fire_cooldown <= 4 and fire <= 1) or
			(atk_type == "Pump Action" and mouse_check_button_pressed(mb_left) and fire_cooldown <= 4 and fire == 0))
			{
				firing = true;
				if (wind < windup_time)
				{
					wind += 1;
					if !audio_is_playing(snd_minigun_windup)
					{
						audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
						audio_stop_sound(snd_minigun_winddown);
						audio_play_sound(snd_minigun_windup, 1, false);
					}
				}
				else fire += burst;
			}
		}
		else if (mouse_check_button_pressed(mb_left) and fire_cooldown == 0 and fire == 0)
		{
			audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
			audio_play_sound(snd_reload_eject_clip, 1, false);
			reloading = reload_time;
			fire_cooldown = reloading;
			if (type != "Shotgun") ammo = 0;
			if (atk_type == "Pump Action") pump = 1;
		}
	}
}