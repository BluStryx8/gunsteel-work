if obj_player.weapon != "glock"
{
	with obj_player
	{
		weapon = "glock";
		if not variable_instance_exists(id, "mode_glock")
		{
			mode_glock = "semi_auto";
		}
		atk_type = mode_glock;
		hands = 1;
		hand_two = [0, 0];
		hand_offset = 0;
		min_damage = 18;
		max_damage = 22;
		bullet_speed = 21;
		bullet_speed_var = 1;
		decay = 0.5;
		reload = 3;
		burst = 1;
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