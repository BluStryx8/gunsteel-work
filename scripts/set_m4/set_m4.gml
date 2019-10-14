if obj_player.weapon != "M4"
{
	with obj_player
	{
		weapon = "M4"
		atk_type = "auto"
		hands = 2;
		hand_two = [17, -2];
		hand_offset = 0;
		min_damage = 14;
		max_damage = 22;
		bullet_speed = 24;
		bullet_speed_var = 1;
		decay = 3;
		reload = 5;
		bullets = 1;
		base_accuracy = 2.5;
		recoil = 0.2;
		max_recoil = 7.5;
		recoil_mult = 0.75;
		accuracy = max_recoil;
		shake_dur = 5;
		max_ammo = 30;
		ammo = max_ammo;
	}
}
