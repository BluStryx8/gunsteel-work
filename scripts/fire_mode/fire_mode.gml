/// @desc Changes fire mode
if (mouse_check_button_pressed(mb_right))
{
	var _w = weapon_find(global.weapons, "weapon", item_definitions[global.p_active, item_properties.name]);
	with (obj_player)
	{
		if (atk_type == "semi_auto") ds_map_replace(global.weapons[_w], "atk_type", "auto")
		else if (atk_type == "auto") ds_map_replace(global.weapons[_w], "atk_type", "semi_auto");
		atk_type = ds_map_find_value(global.weapons[_w], "atk_type");
	}
}