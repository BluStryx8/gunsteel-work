//Draw inventory rectangle
if global.in_inv = true{
	draw_set_colour(c_black);
	draw_set_alpha(0.7);
	draw_rectangle(0, 0, view_get_wport(0), view_get_hport(0), false);
	draw_set_alpha(1);
}