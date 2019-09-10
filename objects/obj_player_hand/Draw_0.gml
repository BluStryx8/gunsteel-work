/// @description Draw sprite
var _dir = point_direction(x, y, mouse_x, mouse_y)

if _dir <= 90 or _dir >= 270
{
	draw_sprite_ext(spr_filler_gun, 0, x - 7, y + 7, 0.5, 0.5, _dir, c_white, 1)
	draw_sprite_ext(spr_player_hand, 0, x - 7, y + 7, 1, 1, _dir, global.p_skin_colour, 1)
}
else
{
	draw_sprite_ext(spr_filler_gun, 0, x - 10, y + 7, 0.5, -0.5, _dir, c_white, 1)
	draw_sprite_ext(spr_player_hand, 0, x - 10, y + 7, 1, -1, _dir, global.p_skin_colour, 1)
}