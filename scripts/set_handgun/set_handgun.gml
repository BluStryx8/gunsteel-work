if obj_player.weapon != "handgun"
{
	with obj_player
	{
		weapon = "handgun"
		damage = 35;
		bullet_speed = 17;
		bullet_speed_var = 1;
		decay = 3;
		reload = 10;
		burst = 1;
		base_accuracy = 3;
		recoil = 3;
		max_recoil = 18;
		shake_dur = 5;
	}
}
