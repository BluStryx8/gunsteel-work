if obj_player.weapon != "glock_17"
{
	with obj_player
	{
		weapon = "glock_17"
		atk_type = "semi_auto"
		hands = 1;
		hand_two = [0, 0];
		hand_offset = 0;
		min_damage = 18;
		max_damage = 22;
		bullet_speed = 21;
		bullet_speed_var = 1;
		decay = 0.5;
		reload = 3;
		bullets = 1;
		base_accuracy = 2.5;
		recoil = 2.5;
		max_recoil = 7.5;
		recoil_mult = 1.5;
		accuracy = max_recoil;
		shake_dur = 7;
		max_ammo = 17;
		ammo = max_ammo;
	}
}