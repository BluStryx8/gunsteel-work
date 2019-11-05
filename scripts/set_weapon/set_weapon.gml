/// @desc Set weapon to one on the weapons map

var _w = weapon_find(global.weapons, "weapon", item_definitions[global.p_active, item_properties.name]);

with (obj_player)
{
	// Save previous weapon ammo
	ds_map_replace(global.weapons[prev_weap], "ammo", ammo);
	ds_map_replace(global.weapons[prev_weap], "pump", pump);
	prev_weap		 = _w;
	// Load Stats
	weapon			 = ds_map_find_value(global.weapons[_w], "weapon");
	type			 = ds_map_find_value(global.weapons[_w], "type");
	atk_type		 = ds_map_find_value(global.weapons[_w], "atk_type");
	hands			 = ds_map_find_value(global.weapons[_w], "hands");
	hand_one		 = ds_map_find_value(global.weapons[_w], "hand_one");
	hand_two		 = ds_map_find_value(global.weapons[_w], "hand_two");
	offset			 = ds_map_find_value(global.weapons[_w], "offset");
	min_damage		 = ds_map_find_value(global.weapons[_w], "min_damage");
	max_damage		 = ds_map_find_value(global.weapons[_w], "max_damage");
	bullet_speed	 = ds_map_find_value(global.weapons[_w], "bullet_speed");
	bullet_speed_var = ds_map_find_value(global.weapons[_w], "bullet_speed_var");
	decay			 = ds_map_find_value(global.weapons[_w], "decay");
	reload			 = ds_map_find_value(global.weapons[_w], "reload");
	burst			 = ds_map_find_value(global.weapons[_w], "burst");
	bullets			 = ds_map_find_value(global.weapons[_w], "bullets");
	pierce			 = ds_map_find_value(global.weapons[_w], "pierce");
	bullet_dd		 = ds_map_find_value(global.weapons[_w], "bullet_dd");
	base_accuracy	 = ds_map_find_value(global.weapons[_w], "base_accuracy");
	recoil			 = ds_map_find_value(global.weapons[_w], "recoil");
	max_recoil		 = ds_map_find_value(global.weapons[_w], "max_recoil");
	recoil_mult		 = ds_map_find_value(global.weapons[_w], "recoil_mult");
	accuracy		 = max_recoil;
	shake_dur		 = ds_map_find_value(global.weapons[_w], "shake_dur");
	max_ammo		 = ds_map_find_value(global.weapons[_w], "max_ammo");
	ammo			 = ds_map_find_value(global.weapons[_w], "ammo");
	draw_time		 = ds_map_find_value(global.weapons[_w], "draw_time");
	fire_cooldown	 = draw_time;
	reloading		 = -1;
	reload_time		 = ds_map_find_value(global.weapons[_w], "reload_time");
	windup_time		 = ds_map_find_value(global.weapons[_w], "windup_time");
	weight			 = ds_map_find_value(global.weapons[_w], "weight");
	pump			 = ds_map_find_value(global.weapons[_w], "pump");
	pump_time		 = ds_map_find_value(global.weapons[_w], "pump_time");
}