if mouse_check_button_pressed(mb_left) or mouse_check_button_pressed(mb_right)
{
	with (obj_player)
	{
		var _heal = 1;
		if (p_health + _heal < p_max_health)
			p_health += _heal;
		else p_health = p_max_health;
		death_check();
	}
	audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
	audio_play_sound(snd_potion, 1, false);
	inv_removeitem(item_type.potion);
}