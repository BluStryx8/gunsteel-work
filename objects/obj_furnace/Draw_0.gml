/// @description Draws stuff


//Fade rectangle for background
if in_furnace = true{
	draw_set_colour(c_black);
	draw_set_alpha(0.3);
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
	draw_set_alpha(1);
}
