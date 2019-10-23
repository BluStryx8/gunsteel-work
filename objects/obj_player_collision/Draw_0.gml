/// @description Dodge Afterimage
if obj_player.dodge > 0
{
	if obj_player.dir <= 90 or obj_player.dir >= 270
	{
		draw_sprite_ext(spr_player_hitbox, -1, xprev[0], yprev[0], 0.9, 0.9, 0, c_white, 0.4);
		draw_sprite_ext(spr_player_hitbox, -1, xprev[1], yprev[1], 0.8, 0.8, 0, c_white, 0.3);
		draw_sprite_ext(spr_player_hitbox, -1, xprev[2], yprev[2], 0.7, 0.7, 0, c_white, 0.2);
	}
	else
	{
		draw_sprite_ext(spr_player_hitbox, -1, xprev[0], yprev[0], -0.9, 0.9, 0, c_white, 0.4);
		draw_sprite_ext(spr_player_hitbox, -1, xprev[1], yprev[1], -0.8, 0.8, 0, c_white, 0.3);
		draw_sprite_ext(spr_player_hitbox, -1, xprev[2], yprev[2], -0.7, 0.7, 0, c_white, 0.2);
	}
}