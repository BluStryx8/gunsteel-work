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
		instance_destroy();
		if (irandom_range(1, 25) == 1)
		{
			var _x_offset = 16;
			var _y_offset = 32;
			if (choose(true, false))
				var _to_create = obj_item_pickup_potion;
			else
				var _to_create = obj_item_pickup_ammo_crate;
			instance_create_layer(x + _x_offset, y + _y_offset, "items", _to_create);
		}
		audio_group_set_gain(audiogrp_sounds, global.settings_sound_volume, 0);
		audio_play_sound(snd_crate_break, 1, false);
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