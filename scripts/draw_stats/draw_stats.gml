
var _inv    = argument0;
var _text_x = argument1;
var _text_y = argument2;
var _init_spacing = 20;
var _text_spacing = 16;

draw_set_font(fnt_inventory);
draw_set_halign(fa_left);
switch (item_definitions[_inv, item_properties.type])
{
	case "firearm":
		var _weapon = true;
		// Weapon and Upgrades
		var _w = weapon_find(global.weapons, "weapon", item_definitions[_inv, item_properties.name]);
		var _stat_1 = ds_map_find_value(global.weapons[_w], "upgrades");
		if (_stat_1 > 0) draw_text(_text_x, _text_y, string(item_definitions[_inv, item_properties.name])
								+ " (+" + string(_stat_1)+")");
		else draw_text(_text_x, _text_y, string(item_definitions[_inv, item_properties.name]));
		_text_y += _init_spacing;
		draw_set_font(fnt_stat);
		// Weapon Type
		_stat_1 = ds_map_find_value(global.weapons[_w], "type");
		var _stat_2 = ds_map_find_value(global.weapons[_w], "atk_type");
		var _stat_3 = ds_map_find_value(global.weapons[_w], "burst");
		if (_stat_3 <= 1) draw_text(_text_x, _text_y, _stat_2 + " " + _stat_1);
		else draw_text(_text_x, _text_y, string(_stat_3) + " burst " + _stat_2 + " " + _stat_1);
		break;
	default:
		var _weapon = false;
		draw_text(_text_x, _text_y, string(item_definitions[_inv, item_properties.name]));
		_text_y += _init_spacing;
		draw_set_font(fnt_stat);
		draw_text(_text_x, _text_y, string(item_definitions[_inv, item_properties.type]));
		break;
}
_text_y += _text_spacing;
var _stat_1 = item_definitions[_inv, item_properties.tooltip];
var _stat_2 = item_definitions[_inv, item_properties.tip_lines];
if (_stat_2 > 0) draw_text(_text_x, _text_y, _stat_1);
_text_y += _text_spacing * _stat_2;
if (!_weapon) exit;
/// The following code only applies to weapons
// Weight
_stat_1 = ds_map_find_value(global.weapons[_w], "weight");
if (_stat_1 <= 0) draw_text(_text_x, _text_y, "Light Weapon (+" + string(0 - _stat_1) + " speed)");
else if (_stat_1 == 1) draw_text(_text_x, _text_y, "Medium Weapon (-" + string(_stat_1) + " speed)");
else draw_text(_text_x, _text_y, "Heavy Weapon (-" + string(_stat_1) + " speed)");
_text_y += _text_spacing;
// Ammunition
_stat_1 = ds_map_find_value(global.weapons[_w], "max_ammo");
if (_stat_1 != 1) draw_text(_text_x, _text_y, string(_stat_1) + " round magazine");
	else draw_text(_text_x, _text_y, "Single round magazine");
_text_y += _text_spacing;
// Damage
_stat_1 = ds_map_find_value(global.weapons[_w], "min_damage");
_stat_2 = ds_map_find_value(global.weapons[_w], "max_damage");
_stat_3 = ds_map_find_value(global.weapons[_w], "upgrades");
_stat_1 = floor(_stat_1 * (_stat_3 + 10) / 10);
_stat_2 = floor(_stat_2 * (_stat_3 + 10) / 10);
_stat_3 = ds_map_find_value(global.weapons[_w], "bullets");
if (_stat_3 <= 1) draw_text(_text_x, _text_y, string(_stat_1) + " - " + string(_stat_2) + " damage");
else draw_text(_text_x, _text_y, string(_stat_1) + " - " + string(_stat_2) + " x " + string(_stat_3) + " damage");
_text_y += _text_spacing;

/// Special
// Pierce
_stat_1 = ds_map_find_value(global.weapons[_w], "pierce");
if (_stat_1 != -1)
{
	draw_text(_text_x, _text_y, "Piercing Bullets (-" + string(_stat_1) + " per pierce)")
	_text_y += _text_spacing;
}
_stat_1 = ds_map_find_value(global.weapons[_w], "pump_time");
// Pump
if (_stat_1 > 0)
{
	draw_text(_text_x, _text_y, string(_stat_1 / room_speed) + "s Pump Time")
	_text_y += _text_spacing;
}
_stat_1 = ds_map_find_value(global.weapons[_w], "windup_time");
// Windup
if (_stat_1 > 0)
{
	draw_text(_text_x, _text_y, string(_stat_1 / room_speed) + "s Windup Time")
	_text_y += _text_spacing;
}


// Reload
_stat_1 = ds_map_find_value(global.weapons[_w], "reload_time");
_stat_2 = ds_map_find_value(global.weapons[_w], "atk_type");
_stat_3 = ds_map_find_value(global.weapons[_w], "max_ammo");
if (_stat_2 == "Pump Action")
{
	_stat_2 = ds_map_find_value(global.weapons[_w], "pump_time");
	_stat_3 = round(((_stat_2 * (_stat_3 + 1)) + _stat_1) / room_speed * 10) / 10;
	_stat_2 = round((_stat_1 + _stat_2) / room_speed * 10) / 10;
	draw_text(_text_x, _text_y, string(_stat_2) + " - " + string(_stat_3) + "s Reload Time");
}
else
{
	_stat_3 = round(_stat_1 / room_speed * 10) / 10;
	draw_text(_text_x, _text_y, string(_stat_3) + "s Reload Time");
}
_text_y += _text_spacing;
// Rate of Fire
_stat_1 = ds_map_find_value(global.weapons[_w], "reload");
if (_stat_1 <= 5)
	draw_text(_text_x, _text_y, "High Rate of Fire (" + string(_stat_1) + ")")
else if (_stat_1 <= 15)
	draw_text(_text_x, _text_y, "Medium Rate of Fire (" + string(_stat_1) + ")")
else
	draw_text(_text_x, _text_y, "Low Rate of Fire (" + string(_stat_1) + ")")
_text_y += _text_spacing;
// Accuracy
_stat_1 = ds_map_find_value(global.weapons[_w], "base_accuracy");
if (_stat_1 <= 1)
	draw_text(_text_x, _text_y, "High Accuracy (" + string(_stat_1) + ")")
else if (_stat_1 <= 5)
	draw_text(_text_x, _text_y, "Decent Accuracy (" + string(_stat_1) + ")")
else
	draw_text(_text_x, _text_y, "Poor Accuracy (" + string(_stat_1) + ")")
_text_y += _text_spacing;
// Recoil
_stat_1 = ds_map_find_value(global.weapons[_w], "recoil");
if (_stat_1 <= 1)
	draw_text(_text_x, _text_y, "Low Recoil (" + string(_stat_1) + ")")
else if (_stat_1 <= 2.5)
	draw_text(_text_x, _text_y, "Medium Recoil (" + string(_stat_1) + ")")
else
	draw_text(_text_x, _text_y, "High Recoil (" + string(_stat_1) + ")")
