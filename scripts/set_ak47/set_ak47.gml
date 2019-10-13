if obj_player.weapon != "AK-47"
{
	with obj_player
	{
		weapon = "AK-47"
		atk_type = "auto"
		hands = 2;
		hand_two = [17, -3];
		hand_offset = 0;
		min_damage = 19;
		max_damage = 25;
		bullet_speed = 22;
		bullet_speed_var = 1;
		decay = 3;
		reload = 6;
		burst = 1;
		base_accuracy = 2;
		recoil = 0.3;
		max_recoil = 7;
		recoil_mult = 0.75;
		accuracy = max_recoil;
		shake_dur = 5;
		max_ammo = 30;
		ammo = max_ammo;
	}
}
