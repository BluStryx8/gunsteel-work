/// @description draws rectangle
draw_set_colour(c_black);
draw_set_alpha(fade);
draw_rectangle(-2, -2, view_get_wport(0) + 2, view_get_hport(0) + 2, false);
draw_set_alpha(1);