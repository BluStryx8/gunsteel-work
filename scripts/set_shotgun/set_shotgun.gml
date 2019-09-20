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
		base_accuracy = 30;
		recoil = 10;
		max_recoil = 50;
		shake_dur = 5;
	}
}
