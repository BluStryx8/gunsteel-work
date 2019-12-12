/// @desc Changes fire mode

if (mouse_check_button_pressed(mb_right))
{
	var _w = weapon_find(global.weapons, "weapon", item_definitions[global.p_active, item_properties.name]);
	with (obj_player)
	{
		if (atk_type == "Semi-automatic")
		{
			if (burst == 1)
			{
				ds_map_replace(global.weapons[_w], "burst", 3);
				ds_map_replace(global.weapons[_w], "atk_type", "Semi-automatic");
			}
			else
			{
				ds_map_replace(global.weapons[_w], "burst", 1);
				ds_map_replace(global.weapons[_w], "atk_type", "Automatic");
			}
		}
		else if (atk_type == "Automatic")
		{
			ds_map_replace(global.weapons[_w], "burst", 1);
			ds_map_replace(global.weapons[_w], "atk_type", "Semi-automatic");
		}
		burst = ds_map_find_value(global.weapons[_w], "burst");
		atk_type = ds_map_find_value(global.weapons[_w], "atk_type");
		audio_group_set_gain(audiogrp_sounds, global.sound_value, 0);
		audio_play_sound(snd_reload_clip, 1, false);
	}
}