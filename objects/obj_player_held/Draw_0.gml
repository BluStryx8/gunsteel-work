/// @description Draw sprite
speed = 0;
if dir <= 90 or dir >= 270
{
	if obj_player.hands == 2
	{
		draw_sprite_ext(spr_player_hand, 0, x, y, 1, 1, dir, global.p_skin_colour, 1)
	}
	else if obj_player.hands >= 1 and hand == 0
	{
		draw_sprite_ext(spr_player_hand, 0, x, y, 1, 1, dir, global.p_skin_colour, 1)
	}
}
else
{
	if obj_player.hands == 2
	{
		draw_sprite_ext(spr_player_hand, 0, x, y, 1, 1, dir, global.p_skin_colour, 1)
	}
	else if obj_player.hands >= 1 and hand == 0
	{
		draw_sprite_ext(spr_player_hand, 0, x, y, 1, 1, dir, global.p_skin_colour, 1)
	}
}