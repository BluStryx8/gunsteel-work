/// @description Draw Self
speed = 0;
if (global.paused or global.in_inv) exit;	// Exits if paused or in an inventory menu

if (image_index == 0)
{
	if (obj_player.reloading != 0 or obj_player.pump < 0)
	{
		if obj_player.reloading != 0
		{
			var _col = make_colour_hsv(0, 0, 200);
			if (obj_player.reloading < 0) rotate += (90 / obj_player.draw_time)
				else rotate += 3;
		}
		else
		{
			var _col = make_colour_hsv(0, 0, 220);
			rotate += 6;
		}
		if (rotate >= 360) rotate = 0;
		draw_sprite_ext(spr_cursor_bracket, image_index, x, y, 0.5, 0.5, image_angle + rotate, _col, 1);
		exit;
	}
	else rotate = 0;
}
if (obj_player.reloading != 0) exit;
if (obj_player.type == "pistol") or (obj_player.type == "rifle") or (obj_player.type == "shotgun")
	or (obj_player.type == "sniper")
{
	if (obj_player.pump != 0 or obj_player.ammo == 0) var _col = make_colour_hsv(0, 0, 220)
		else var _col = c_white;
	draw_sprite_ext(spr_cursor_bracket, image_index, x, y, 0.5, 0.5, image_angle, _col, 1)
}