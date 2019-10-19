if obj_player.weapon != "1911"
{
	with obj_player
	{
		weapon = ds_map_find_value(global.weapons[1], "weapon");
		atk_type = ds_map_find_value(global.weapons[1], "atk_type");
		hands = ds_map_find_value(global.weapons[1], "hands");
		hand_one = [-3, 7];
		hand_two = [0, 0];
		offset = [-4, 0];
		min_damage = 48;
		max_damage = 52;
		bullet_speed = 20;
		bullet_speed_var = 1;
		decay = 0.5;
		reload = 10;
		burst = 1;
		bullets = 1;
		base_accuracy = 2;
		recoil = 2;
		max_recoil = 6;
		recoil_mult = 3;
		accuracy = max_recoil;
		shake_dur = 8;
		max_ammo = 7;
		ammo = max_ammo;
	}
}
