/// @description Draws Faded Rectangle
var _x1 = camera_get_view_x(view_camera[0]);
var _y1 = camera_get_view_y(view_camera[0]);
var _x2 = _x1 + camera_get_view_width(view_camera[0]);
var _y2 = _y1 + camera_get_view_height(view_camera[0]);

// Paused
if (!room = rm_mainmenu)
{
	if (global.paused)
	{
		draw_set_colour(c_black);
		draw_set_alpha(0.2);
		draw_rectangle(_x1 - 2, _y1 - 2, _x2 + 2, _y2 + 2, false);
		draw_set_alpha(1);
	}
	// Inventory
	if (global.in_inv)
	{
		draw_set_colour(c_black);
		draw_set_alpha(0.6);
		draw_rectangle(_x1 - 2, _y1 - 2, _x2 + 2, _y2 + 2, false);
		draw_set_alpha(1);
	}
}