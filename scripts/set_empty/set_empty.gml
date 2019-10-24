/// @desc Resets stats to empty
if obj_player.weapon != "none"
{
	with (obj_player)
	{
		// Save previous weapon ammo
		ds_map_replace(global.weapons[prev_weap], "ammo", ammo);
		prev_weap		 = 0;
		// Load blank
		weapon			 = "none";
		type			 = "none";
		atk_type		 = "none";
		hands			 = 0;
		hand_one		 = [0, 0];
		hand_two		 = [0, 0];
		offset			 = [0, 0, 0];
		min_damage		 = 0;
		max_damage		 = 0;
		bullet_speed	 = 0;
		bullet_speed_var = 0;
		decay			 = 0;
		reload			 = 0;
		burst			 = 0;
		bullets			 = 0;
		bullet_dd		 = 0;
		base_accuracy	 = 0;
		recoil			 = 0;
		max_recoil		 = 0;
		recoil_mult		 = 0;
		accuracy		 = max_recoil;
		shake_dur		 = 0;
		max_ammo		 = 0;
		ammo			 = max_ammo;
	}
}