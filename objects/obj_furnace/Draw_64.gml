//@description Fade rectangle for background
if global.in_furnace = true{
	draw_set_colour(c_black);
	draw_set_alpha(0.3);
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
	draw_set_alpha(1);
	
	
	draw_sprite_ext(spr_singlebar,0,gui_holder_pos_x, display_get_gui_height()/3,1,1,0,c_white,1) 
	draw_sprite_ext(spr_singlebar,0,gui_holder_pos_x + gui_holder_width - normal_cell_width, display_get_gui_height()/3,1,1,0,c_white,1) 
}

if item_in_slot = true
{
	var draw_item = inventory[obj_inventory_manager.pickup_item] 
	draw_sprite_ext(item_definitions[draw_item, item_properties.sprite_gui], -1, gui_holder_pos_x - 16 ,display_get_gui_height()/3 - 16, 1, 1, 0, c_white, 1);
}
