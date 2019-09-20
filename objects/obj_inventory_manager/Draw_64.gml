/// @description Draw Inventory

gui_holder_width = sprite_get_width(spr_hotbar);
gui_holder_pos_x = (view_get_wport(0) / 2) - (gui_holder_width / 2);
gui_holder_pos_y = 32;
gui_holder_pad   = 6;
gui_holder_slot_offset_x = 64 + gui_holder_pad;

draw_sprite(spr_hotbar, -1, gui_holder_pos_x, 0);

draw_sprite(spr_active, -1, gui_holder_pos_x + (gui_holder_slot_offset_x * active_item) + 38, gui_holder_pos_y + gui_holder_pad);

for (var _inv = 0; _inv < HOTBAR; _inv++)
{
	item_define_index = inventory[_inv];
	if (item_define_index != item_type.none)
	{
		draw_sprite(item_definitions[item_define_index, item_properties.sprite_gui], -1,
				   (gui_holder_pos_x + gui_holder_pad) + (gui_holder_slot_offset_x * _inv) + 32,
				   (gui_holder_pos_y + gui_holder_pad));
		draw_set_halign(fa_right);
		draw_set_font(fnt_inventory);
		draw_text((gui_holder_pos_x + gui_holder_pad) + (gui_holder_slot_offset_x * _inv) + 57,
				  (gui_holder_pos_y + gui_holder_pad) + 10,
				  string(item_definitions[item_define_index, item_properties.amount]));
	}
}