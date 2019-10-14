with obj_player
{
	// Check Firing
	if (atk_type == "auto" and mouse_check_button(mb_left) and fire_cooldown == 0)
		or (atk_type == "semi_auto" and mouse_check_button_pressed(mb_left) and fire_cooldown == 0)
	{
		fire = 1;
		fire_cooldown = reload;
	}	
	// Calculate Fire
	if fire = 1
	{
		// Check Ammo
		if ammo > 0
		{
			if accuracy < base_accuracy accuracy = base_accuracy;
			var _bullet_count = 0;
			if bullets != 0 do
			{
				instance_create_layer(x, y, "bullets", obj_player_bullet);
				_bullet_count += 1;
			}
			until _bullet_count >= bullets;
			audio_group_set_gain(audiogrp_sounds,global.settings_sound_volume,0);
			audio_play_sound(snd_fire, 1, false);
			accuracy += recoil;
			if accuracy > max_recoil accuracy = max_recoil;
			shake = round(shake_dur * global.settings_shake);
			ammo -= 1;
		}
		else
		{
			audio_play_sound(snd_dry_fire, 1, false);
			
		}
	}
}