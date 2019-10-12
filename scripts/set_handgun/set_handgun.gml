if obj_player.weapon != "handgun"
{
	with obj_player
	{
		weapon = "handgun"
		atk_type = "semi_auto"
		min_damage = 18;
		max_damage = 22;
		bullet_speed = 21;
		bullet_speed_var = 1;
		decay = 1.5;
		reload = 3;
		burst = 1;
		base_accuracy = 2.5;
		recoil = 2.5;
		max_recoil = 7.5;
		recoil_mult = 1.5;
		accuracy = max_recoil;
		shake_dur = 7;
	}
}