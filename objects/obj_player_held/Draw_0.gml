/// @description Draw sprite
var _dir = point_direction(x, y, mouse_x, mouse_y)

if _dir <= 90 or _dir >= 270
{
	if obj_player.hands == 2
	{
		draw_sprite_ext(spr_player_hand, 0, x, y, 1, 1, _dir, global.p_skin_colour, 1)
	}
	else if obj_player.hands >= 1 and hand == 0
	{
		draw_sprite_ext(spr_player_hand, 0, x, y, 1, 1, _dir, global.p_skin_colour, 1)
	}
}
else
{
	if obj_player.hands == 2
	{
		draw_sprite_ext(spr_player_hand, 0, x, y, 1, 1, _dir, global.p_skin_colour, 1)
	}
	else if obj_player.hands >= 1 and hand == 0
	{
		draw_sprite_ext(spr_player_hand, 0, x, y, 1, 1, _dir, global.p_skin_colour, 1)
	}
}