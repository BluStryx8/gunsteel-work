if obj_player.weapon != "Uzi"
{
	with obj_player
	{
		weapon = "Uzi"
		atk_type = "auto"
		min_damage = 19;
		max_damage = 23;
		bullet_speed = 23;
		bullet_speed_var = 1;
		decay = 1.5;
		reload = 6;
		burst = 1;
		base_accuracy = 3;
		recoil = 1;
		max_recoil = 8;
		recoil_mult = 1;
		accuracy = max_recoil;
		shake_dur = 6;
		max_ammo = 32;
		ammo = max_ammo;
	}
}