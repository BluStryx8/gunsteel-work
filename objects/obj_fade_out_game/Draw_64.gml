/// @description draws rectangle
draw_set_colour(c_black);
draw_set_alpha(global.rectangle_opacity_out);
draw_rectangle(0, 0, view_get_wport(0), view_get_hport(0), false);
draw_set_alpha(1);