/// @description Check for movement of bar
if mouse_check_button_pressed(mb_left)
{
	var _button_xpos = x + sprite_width * value;
	var _button_ypos = y;
	var _button_radius = sprite_get_width(spr_slider_button) * image_xscale;
	if point_in_circle(mouse_x, mouse_y, _button_xpos, _button_ypos, _button_radius * 2)
		selected = true;
}

if (!mouse_check_button(mb_left))
	selected = false;

if (selected)
	event_user(0);
	
event_user(1);