if obj_player.weapon != "none"
{
	with obj_player
	{
		weapon = "none"
		atk_type = "none"
		min_damage = 0;
		max_damage = 0;
		bullet_speed = 0;
		bullet_speed_var = 0;
		decay = 0;
		reload = 0;
		burst = 0;
		base_accuracy = 0;
		recoil = 0;
		max_recoil = 0;
		recoil_mult = 0;
		accuracy = max_recoil;
		shake_dur = 0;
		max_ammo = 0;
		ammo = max_ammo;
	}
}