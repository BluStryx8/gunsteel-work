if obj_player.weapon != "shotgun"
{
	with obj_player
	{
		weapon = "shotgun"
		damage = 20;
		bullet_speed = 12;
		bullet_speed_var = 2;
		decay = 1;
		reload = 45;
		burst = 6;
		base_accuracy = 15;
		recoil = 5;
		max_recoil = 30;
		shake_dur = 12;
	}
}
