if obj_player.weapon != "remington_870"
{
	with obj_player
	{
		weapon = "remington_870"
		atk_type = "semi_auto"
		hands = 2;
		hand_two = [17, 0];
		hand_offset = 0;
		min_damage = 15;
		max_damage = 35;
		bullet_speed = 24;
		bullet_speed_var = 2;
		decay = 0.5;
		reload = 30;
		burst = 1;
		bullets = 12;
		base_accuracy = 10;
		recoil = 3;
		max_recoil = 16;
		recoil_mult = 0.5;
		accuracy = max_recoil;
		shake_dur = 20;
		max_ammo = 5;
		ammo = max_ammo;
	}
}
