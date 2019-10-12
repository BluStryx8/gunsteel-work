if obj_player.weapon != "shotgun"
{
	with obj_player
	{
		weapon = "shotgun"
		atk_type = "semi_auto"
		min_damage = 15;
		max_damage = 35;
		bullet_speed = 24;
		bullet_speed_var = 2;
		decay = 0.5;
		reload = 30;
		burst = 12;
		base_accuracy = 10;
		recoil = 3;
		max_recoil = 16;
		recoil_mult = 0.5;
		accuracy = max_recoil;
		shake_dur = 16;
		max_ammo = 5;
		ammo = max_ammo;
	}
}
