/// @description Damage and destroy
if (other.id == last_hit) exit;

instance_create_layer(x, y, "bullets", obj_player_bullet_hit);
last_hit = other.id;
with (other)
{
	// Adds to damage when hit
	hp -= other.damage;
	if (hp <= 0)
	{
		if (stored != -1)
		{
			var _x_offset = 16;
			if (image_index == 0)
				var _y_offset = 32;
			else
				var _y_offset = 16;
			instance_create_layer(x + _x_offset, y + _y_offset, "items", stored);
		}
		audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
		audio_play_sound(snd_crate_break, 1, false);
		instance_destroy();
		var _multiplier = 0.1;
		score += floor(max_hp) * _multiplier;
	}
	// Draw damage
	dmg = instance_create_layer(x, y, "HUD", obj_dmg_number);
	dmg.damage = other.damage;
}
if (pierce != -1)
{
	damage -= pierce;
	if (damage <= 0) instance_destroy();
}
else instance_destroy();