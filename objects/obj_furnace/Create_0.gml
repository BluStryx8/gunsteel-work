/// @description Declaration
global.in_furnace = false
clicked = false

gui_holder_width = sprite_get_width(spr_hotbar);
gui_holder_pos_x = (camera_get_view_width(0) / 2) - (gui_holder_width / 2);
normal_cell_width = 76

item_in_slot = false