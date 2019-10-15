if obj_player.weapon != "P90"
{
	with obj_player
	{
		weapon = "P90"
		atk_type = "auto";
		hands = 2;
		hand_two = [8, 0];
		hand_offset = 9;
		min_damage = 13;
		max_damage = 20;
		bullet_speed = 25;
		bullet_speed_var = 1;
		decay = 1;
		reload = 4;
		burst = 1;
		bullets = 1;
		base_accuracy = 2;
		recoil = 0.2;
		max_recoil = 6;
		recoil_mult = 0.75;
		accuracy = max_recoil;
		shake_dur = 5;
		max_ammo = 50;
		ammo = max_ammo;
	}
}
