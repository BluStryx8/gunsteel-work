if obj_player.weapon != "1911"
{
	with obj_player
	{
		weapon = "1911"
		atk_type = "semi_auto"
		hands = 1;
		hand_two = [0, 0];
		hand_offset = 0;
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
