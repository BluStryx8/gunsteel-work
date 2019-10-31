/// @description Draws stuff


//Fade rectangle for background
if in_furnace = true{
	draw_set_colour(c_black);
	draw_set_alpha(0.3);
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
	draw_set_alpha(1);
	
	
	draw_sprite_ext(spr_singlebar,0,display_get_gui_width()/3, display_get_gui_height()/2,1,1,0,c_white,1) 
}

