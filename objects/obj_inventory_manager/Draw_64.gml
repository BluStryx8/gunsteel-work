/// @description Draw Inventory

// Set Variables
gui_holder_width = sprite_get_width(spr_hotbar);
gui_holder_pos_x = (view_get_wport(0) / 2) - (gui_holder_width / 2);
gui_holder_pos_y = 32;
gui_holder_pad   = 6;
gui_holder_slot_offset_x = 64 + gui_holder_pad;

draw_set_halign(fa_right);
draw_set_font(fnt_inventory);
draw_set_color(c_white);

// Draw Hotbar
draw_sprite(spr_hotbar, -1, gui_holder_pos_x, 0);
if global.holstered = false{
	draw_sprite(spr_active, -1, gui_holder_pos_x + (gui_holder_slot_offset_x * active_item) + 38, gui_holder_pos_y + gui_holder_pad);}
for (var _inv = 0; _inv < HOTBAR; _inv++)
{
	item_define_index = inventory[_inv];
	if (item_define_index != item_type.none)
	{
		draw_sprite(item_definitions[item_define_index, item_properties.sprite_gui], -1,
				   (gui_holder_pos_x + gui_holder_pad) + (gui_holder_slot_offset_x * _inv) + 32,
				   (gui_holder_pos_y + gui_holder_pad));
		if obj_inventory_manager.item_definitions[item_define_index, item_properties.type] != "firearm"
		{
			draw_text((gui_holder_pos_x + gui_holder_pad) + (gui_holder_slot_offset_x * _inv) + 57,
					  (gui_holder_pos_y + gui_holder_pad) + 10,
					  string(item_definitions[item_define_index, item_properties.amount]));
		}
	}
}

// Draw Weapon
draw_set_halign(fa_center);
var _sprite = obj_inventory_manager.item_definitions[inventory[active_item], item_properties.sprite_gui];
switch (obj_player.type)
{
	case "pistol":
		draw_sprite_ext(_sprite, -1, view_get_wport(0) - 80, view_get_hport(0) - 64, 1, 1, 0, c_white, 1);
		draw_text(view_get_wport(0) - 80, view_get_hport(0) - 112, string(obj_player.ammo) + " / " + string(obj_player.max_ammo));
		break;
	case "rifle":
	case "shotgun":
		draw_sprite_ext(_sprite, -1, view_get_wport(0) - 80, view_get_hport(0) - 64, 2, 2, 0, c_white, 1);
		draw_text(view_get_wport(0) - 80, view_get_hport(0) - 112, string(obj_player.ammo) + " / " + string(obj_player.max_ammo));
		break;
}
// Draw Ammo
var _x = -32;
var _y = -128;
for (var _ammo = obj_player.ammo; _ammo > 0; _ammo--)
{
	switch (obj_player.type)
	{
		case "pistol":
			draw_sprite(spr_ammo_pistolbullet, -1, view_get_wport(0) + _x, view_get_hport(0) + _y);
			break;
		case "rifle":
			draw_sprite(spr_ammo_riflebullet, -1, view_get_wport(0) + _x, view_get_hport(0) + _y);
	}
	_y -= 16;
	if (view_get_hport(0) + _y - 64) <= 0
	{
		_x -= 32;
		_y = -128;
	}
}