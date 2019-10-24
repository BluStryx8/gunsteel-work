/// @description Draw Inventory

// Set Variables
gui_holder_width = sprite_get_width(spr_hotbar);
gui_holder_height = sprite_get_height(spr_hotbar);
gui_holder_pos_x = (view_get_wport(0) / 2) - (gui_holder_width / 2);
gui_holder_pad   = 6;
gui_holder_slot_offset_x = 64 + gui_holder_pad;
if (global.in_inv)
{
	hotbar_height = view_get_hport(0) - gui_holder_height * 3;
	gui_holder_pos_y = 32 + hotbar_height;
}
else
{
	hotbar_height = 0;
	gui_holder_pos_y = 32;
}

// Declare Draw Constants
draw_set_halign(fa_right);
draw_set_font(fnt_inventory);
draw_set_alpha(1);
if global.paused var _col = make_colour_hsv(0, 0, 150) else var _col = c_white;
draw_set_color(_col);


// Draw Hotbar
draw_sprite_ext(spr_hotbar, -1, gui_holder_pos_x, hotbar_height, 1, 1, 0, _col, 1);
draw_sprite_ext(spr_active, -1, gui_holder_pos_x + (gui_holder_slot_offset_x * active_item) + 38,
				gui_holder_pos_y + gui_holder_pad, 1, 1, 0, _col, 1);
for (var _inv = 0; _inv <= HOTBAR; _inv++)
{
	item_define_index = inventory[_inv];
	if (item_define_index != item_type.none)
	{
		draw_sprite_ext(item_definitions[item_define_index, item_properties.sprite_gui], -1,
					(gui_holder_pos_x + gui_holder_pad) + (gui_holder_slot_offset_x * _inv) + 32,
					(gui_holder_pos_y + gui_holder_pad), 1, 1, 0, _col, 1);
		if obj_inventory_manager.item_definitions[item_define_index, item_properties.type] != "firearm"
		{
			draw_text((gui_holder_pos_x + gui_holder_pad) + (gui_holder_slot_offset_x * _inv) + 57,
						(gui_holder_pos_y + gui_holder_pad) + 10,
						string(item_definitions[item_define_index, item_properties.amount]));
		}
	}
}

//Draw extended inventory
if (global.in_inv)
{
	draw_sprite_ext(spr_hotbar, -1, gui_holder_pos_x, view_get_hport(0) - gui_holder_height, 1, 1, 0, _col, 1);
	draw_sprite_ext(spr_hotbar, -1, gui_holder_pos_x, view_get_hport(0) - gui_holder_height * 2, 1, 1, 0, _col, 1);
}


// Draw Weapon
var _weap_offset_x = -32;
var _weap_offset_y = -32;

if (global.holstered) exit;
draw_set_halign(fa_center);
var _sprite = obj_inventory_manager.item_definitions[inventory[active_item], item_properties.sprite_gui];
switch (obj_player.type)
{
	case "pistol":
		draw_sprite_ext(_sprite, -1, view_get_wport(0) + _weap_offset_x - 16,
						view_get_hport(0) + _weap_offset_y - 16, 1, 1, 0, _col, 1);
		draw_text(view_get_wport(0) + _weap_offset_x - 16, view_get_hport(0) + _weap_offset_y - 64,
					string(obj_player.ammo) + " / " + string(obj_player.max_ammo));
		break;
	case "rifle":
	case "shotgun":
		draw_sprite_ext(_sprite, -1, view_get_wport(0) + _weap_offset_x - 16,
						view_get_hport(0) + _weap_offset_y - 16, 2, 2, 0, _col, 1);
		draw_text(view_get_wport(0) + _weap_offset_x - 16, view_get_hport(0) + _weap_offset_y - 64,
					string(obj_player.ammo) + " / " + string(obj_player.max_ammo));
		break;
}
// Draw Ammo
var _x = _weap_offset_x;
var _y = _weap_offset_y - 80;
for (var _ammo = obj_player.ammo; _ammo > 0; _ammo--)
{
	switch (obj_player.type)
	{
		case "pistol":
			draw_sprite_ext(spr_ammo_pistolbullet, -1, view_get_wport(0) + _x, view_get_hport(0) + _y, 1, 1, 0, _col, 1);
			break;
		case "rifle":
			draw_sprite_ext(spr_ammo_riflebullet, -1, view_get_wport(0) + _x, view_get_hport(0) + _y, 1, 1, 0, _col, 1);
	}
	_y -= 16;
	if ((view_get_hport(0) + _y - 16) <= 0)
	{
		_x += _weap_offset_x;
		_y = _weap_offset_y - 80;
	}
}