/// @description Draw sprite
speed = 0;	// Stops hand from moving any further in the case of pause
if (dir <= 90 or dir >= 270)
{
	// Facing right
	if (obj_player.hands == 2)						// Both hands draw
		draw_sprite_ext(spr_player_hand, 0, x, y, global.p_scale, global.p_scale, dir, global.p_skin_colour, 1)
	else if (obj_player.hands >= 1 and hand == 0)	// Only left hand draws
		draw_sprite_ext(spr_player_hand, 0, x, y, global.p_scale, global.p_scale, dir, global.p_skin_colour, 1);
}
else
{
	// Facing left
	if (obj_player.hands == 2)						// Both hands draw
		draw_sprite_ext(spr_player_hand, 0, x, y, global.p_scale, global.p_scale, dir, global.p_skin_colour, 1)

	else if (obj_player.hands >= 1 and hand == 0)	// Only left hand draws
		draw_sprite_ext(spr_player_hand, 0, x, y, global.p_scale, global.p_scale, dir, global.p_skin_colour, 1);
}