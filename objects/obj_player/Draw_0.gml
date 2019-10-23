/// @description Draw Player
if (!global.paused) dir = point_direction(x, y, mouse_x, mouse_y)

if dir <= 90 or dir >= 270
{
	if dodge > 0
	{
		draw_sprite_ext(spr_player_hitbox, -1, xprev[0], yprev[0], 0.9, 0.9, 0, c_white, 0.4);
		draw_sprite_ext(spr_player_hitbox, -1, xprev[1], yprev[1], 0.8, 0.8, 0, c_white, 0.3);
		draw_sprite_ext(spr_player_hitbox, -1, xprev[2], yprev[2], 0.7, 0.7, 0, c_white, 0.2);
	}
	draw_sprite_ext(spr_player_shadow, 0, x, y + 17, 1, 1, 0, c_white, 0.25);
	draw_sprite_ext(spr_player_feet, 0, x + 4 + anim_x, y + 15 + anim_y, 1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_feet, 0, x - 4 - anim_x, y + 14 - anim_y + still, 1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_pants, 0, x, y, 1, 1, 0, global.p_pants_colour, 1)
	draw_sprite_ext(spr_player_legs, 0, x + 4 + anim_x, y + 11 + anim_y, 1, 1, 0, global.p_pants_colour, 1)
	draw_sprite_ext(spr_player_legs, 0, x - 4 - anim_x, y + 10 - anim_y + still, 1, 1, 0, global.p_pants_colour, 1)
	if hands <= 1 draw_sprite_ext(spr_player_hand, 0, x + 10 - anim_x, y + 7, 1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_body, 0, x, y, 1, 1, 0, global.p_shirt_colour, 1)
	draw_sprite_ext(spr_player_bodyupper, 0, x, y, 1, 1, 0, c_white, 1)
	if hands == 0 draw_sprite_ext(spr_player_hand, 0, x - 7 + anim_x, y + 7, 1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_head, 0, x, y - anim_y, 1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_shade, 0, x, y - anim_y, 1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_hair, 0, x, y - anim_y, 1, 1, 0, global.p_hair_colour, 1)
	draw_sprite_ext(spr_player_hat, 0, x, y - anim_y, 1, 1, 0, c_white, 1)
	if hands >= 1 draw_sprite_ext(sprite, 0, x + offset[0], y + offset[1], 1, 1, dir, c_white, 1)
	if dodge > 0 draw_sprite_ext(spr_player_hitbox, -1, x, y, 1, 1, 0, c_white, 0.1);
}
else
{
	if dodge > 0
	{
		draw_sprite_ext(spr_player_hitbox, -1, xprev[0], yprev[0], -0.9, 0.9, 0, c_white, 0.4);
		draw_sprite_ext(spr_player_hitbox, -1, xprev[1], yprev[1], -0.8, 0.8, 0, c_white, 0.3);
		draw_sprite_ext(spr_player_hitbox, -1, xprev[2], yprev[2], -0.7, 0.7, 0, c_white, 0.2);
	}
	draw_sprite_ext(spr_player_shadow, 0, x, y + 17, 1, 1, 0, c_white, 0.25);
	draw_sprite_ext(spr_player_feet, 0, x + 4 + anim_x, y + 14 - anim_y + still, 1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_feet, 0, x - 4 - anim_x, y + 15 + anim_y, 1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_pants, 0, x, y, -1, 1, 0, global.p_pants_colour, 1)
	draw_sprite_ext(spr_player_legs, 0, x + 4 + anim_x, y + 10 - anim_y + still, 1, 1, 0, global.p_pants_colour, 1)
	draw_sprite_ext(spr_player_legs, 0, x - 4 - anim_x, y + 11 + anim_y, 1, 1, 0, global.p_pants_colour, 1)
	if hands == 0 draw_sprite_ext(spr_player_hand, 0, x - 10 - anim_x, y + 7, 1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_body, 0, x, y, -1, 1, 0, global.p_shirt_colour, 1)
	draw_sprite_ext(spr_player_bodyupper, 0, x, y, -1, 1, 0, c_white, 1)
	if hands <= 1 draw_sprite_ext(spr_player_hand, 0, x + 7 + anim_x, y + 7, 1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_head, 0, x, y - anim_y, -1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_shade, 0, x, y - anim_y, -1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_hair, 0, x, y - anim_y, -1, 1, 0, global.p_hair_colour, 1)
	draw_sprite_ext(spr_player_hat, 0, x, y - anim_y, -1, 1, 0, c_white, 1)
	if hands == 2 draw_sprite_ext(sprite, 0, x - offset[0], y + offset[1], 1, -1, dir, c_white, 1)
	else if hands >= 1 draw_sprite_ext(sprite, 0, x + offset[0] + offset[2], y + offset[1], 1, -1, dir, c_white, 1)
	if dodge > 0 draw_sprite_ext(spr_player_hitbox, -1, x, y, -1, 1, 0, c_white, 0.1);
}