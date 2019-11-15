/// @description Draws the faded rectangle
// Paused
if (!room = rm_mainmenu)
if (global.paused)
{
	draw_set_colour(c_black);
	draw_set_alpha(0.2);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
	


}
// Inventory
if (global.in_inv)
{
	draw_set_colour(c_black);
	draw_set_alpha(0.6);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
}