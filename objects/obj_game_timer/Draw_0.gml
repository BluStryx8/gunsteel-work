/// @description Draws message

if reminder = true 
{
	draw_set_font(fnt_inventory)
	draw_set_halign(fa_center)
	draw_set_alpha(1)
	draw_text(camera_get_view_width(0)/2, camera_get_view_height(0)/2, "You have played for 30 minutes!")
	draw_text(camera_get_view_width(0)/2, camera_get_view_height(0)/2 + 30, "Remember to take a break!")
}