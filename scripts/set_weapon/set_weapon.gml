/// @desc Set weapon to one on the weapons map

for (var _w = 0; _w < array_length_1d(global.weapons); _w++)
{
	if (ds_map_find_value(global.weapons[_w], "weapon") == item_definitions[global.p_active, item_properties.name])
	break;
}
if _w >= array_length_1d(global.weapons) _w = 0;

with obj_player
{
	weapon			 = ds_map_find_value(global.weapons[_w], "weapon");
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
	base_accuracy	 = ds_map_find_value(global.weapons[_w], "base_accuracy");
	recoil			 = ds_map_find_value(global.weapons[_w], "recoil");
	max_recoil		 = ds_map_find_value(global.weapons[_w], "max_recoil");
	recoil_mult		 = ds_map_find_value(global.weapons[_w], "recoil_mult");
	accuracy		 = max_recoil;
	shake_dur		 = ds_map_find_value(global.weapons[_w], "shake_dur");
	max_ammo		 = ds_map_find_value(global.weapons[_w], "max_ammo");
	ammo			 = ds_map_find_value(global.weapons[_w], "ammo");
}