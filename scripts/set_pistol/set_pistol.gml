if obj_player.weapon != "pistol"
{
	with obj_player
	{
		weapon = "pistol"
		damage = 50;
		bullet_speed = 15;
		bullet_speed_var = 1;
		decay = 3;
		reload = 15;
		burst = 1;
		base_accuracy = 5;
		recoil = 2;
		max_recoil = 15;
		shake_dur = 5;
	}
}