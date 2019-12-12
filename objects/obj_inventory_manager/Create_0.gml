/// @description Initialise Inventory
inv_init();

active_item = 0;
change_check = -1;
global.in_inv = false;

inv_row = 0;
inv_column = 0;

gui_holder_width		 = sprite_get_width(spr_hotbar);
gui_holder_height		 = sprite_get_height(spr_hotbar);
gui_holder_pos_x		 = (camera_get_view_width(0) / 2) - (gui_holder_width / 2);
gui_holder_pad			 = 6;
gui_holder_slot_offset_x = 64 + gui_holder_pad;
gui_hotbar_rows			 = 3;
gui_hotbar_columns		 = 5;

hover = 0;
clicked = false;
selected_cell = -1;
pickup_item = -1;
item_in_hand = false;
old_item = -1;

logo_alpha = 0;

global.settings = false;