/// @description Loading
if (loading_fade <= -1) exit;

if (start) loading_fade -= 1 / room_speed;

if (loading_fade > 0)
{
	draw_set_colour(c_black);
	draw_set_alpha(loading_fade);
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
}
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_font(fnt_room_debug);

var _x_offset = 32;
var _y_offset = 32;
var _scale = 2;

if (!start)
{
	switch (loading)
	{
		case 0:
			var _text = "Loading"
			loading = 1;
			break;
		case 1:
			var _text = "Loading."
			loading = 2;
			break;
		case 2:
			var _text = "Loading.."
			loading = 3;
			break;
		case 3:
			var _text = "Loading..."
			loading = 0;
			break;
	}
	draw_text(_x_offset, display_get_gui_height() - _y_offset, _text);
}
else
{
	loading += 8 / room_speed;
	draw_sprite_ext(spr_load, loading, _x_offset * _scale,
					display_get_gui_height() - (_x_offset * _scale),
					_scale, _scale, 0, c_white, min(loading_fade + 1, 1));
}