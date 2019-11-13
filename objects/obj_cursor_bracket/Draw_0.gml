/// @description Draw Self
speed = 0;
if (global.paused or global.in_inv) exit;	// Exits if paused or in an inventory menu

if (image_index == 0)
{
	if (obj_player.reloading != 0 or obj_player.pump < 0)
	{
		if obj_player.reloading != 0
		{
			var _col = make_colour_hsv(130, 30, 180);
			if (obj_player.reloading < 0) rotate += (90 / obj_player.draw_time)
				else rotate += 6;
		}
		else
		{
			var _col = make_colour_hsv(130, 30, 200);
			rotate += 6;
		}
		if (rotate >= 360) rotate = 0;
		draw_sprite_ext(spr_cursor_bracket, image_index, x, y, 0.5, 0.5, image_angle + rotate, _col, 1);
		exit;
	}
	else rotate = 0;
}
if (obj_player.reloading != 0) exit;
if (obj_player.type != "other" and obj_player.type != "Bar" and obj_player.type != "Ore")
{
	if ((obj_player.atk_type == "Semi-automatic" or obj_player.atk_type == "Pump Action")
		and obj_player.fire_cooldown > 4)
		var _col = make_colour_hsv(140, 20, 230)
	else if (obj_player.pump != 0 or obj_player.ammo == 0)
		var _col = make_colour_hsv(140, 30, 200)
	else var _col = c_white;
	draw_sprite_ext(spr_cursor_bracket, image_index, x, y, 0.5, 0.5, image_angle, _col, 1)
}