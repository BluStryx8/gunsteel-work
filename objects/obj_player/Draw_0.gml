/// @description Draw Player
var _dir = point_direction(x, y, mouse_x, mouse_y)

if _dir <= 90 or _dir >= 270
{
	draw_sprite_ext(spr_player_feet, 0, x + 4 + anim_x, y + 15 + anim_y, 1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_feet, 0, x - 4 - anim_x, y + 14 - anim_y + still, 1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_pants, 0, x, y, 1, 1, 0, global.p_pants_colour, 1)
	draw_sprite_ext(spr_player_legs, 0, x + 4 + anim_x, y + 11 + anim_y, 1, 1, 0, global.p_pants_colour, 1)
	draw_sprite_ext(spr_player_legs, 0, x - 4 - anim_x, y + 10 - anim_y + still, 1, 1, 0, global.p_pants_colour, 1)
	draw_sprite_ext(spr_player_hand, 0, x + 10 - anim_x, y + 6 - anim_y + still, 1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_body, 0, x, y, 1, 1, 0, global.p_shirt_colour, 1)
	draw_sprite_ext(spr_player_bodyupper, 0, x, y, 1, 1, 0, c_white, 1)
	draw_sprite_ext(spr_player_head, 0, x, y - anim_y, 1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_shade, 0, x, y - anim_y, 1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_hair, 0, x, y - anim_y, 1, 1, 0, global.p_hair_colour, 1)
	draw_sprite_ext(spr_player_hat, 0, x, y - anim_y, 1, 1, 0, c_white, 1)
	
	draw_sprite_ext(spr_filler_gun, 0, x - 7, y + 7, 0.75, 0.75, _dir, c_white, 1)
	draw_sprite_ext(spr_player_hand, 0, x - 7, y + 7, 1, 1, _dir, global.p_skin_colour, 1)
}
else
{
	draw_sprite_ext(spr_player_feet, 0, x + 4 + anim_x, y + 14 - anim_y + still, 1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_feet, 0, x - 4 - anim_x, y + 15 + anim_y, 1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_pants, 0, x, y, -1, 1, 0, global.p_pants_colour, 1)
	draw_sprite_ext(spr_player_legs, 0, x + 4 + anim_x, y + 10 - anim_y + still, 1, 1, 0, global.p_pants_colour, 1)
	draw_sprite_ext(spr_player_legs, 0, x - 4 - anim_x, y + 11 + anim_y, 1, 1, 0, global.p_pants_colour, 1)
	draw_sprite_ext(spr_player_body, 0, x, y, -1, 1, 0, global.p_shirt_colour, 1)
	draw_sprite_ext(spr_player_bodyupper, 0, x, y, -1, 1, 0, c_white, 1)
	draw_sprite_ext(spr_player_hand, 0, x + 7 + anim_x, y + 7 + anim_y, -1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_head, 0, x, y - anim_y, -1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_shade, 0, x, y - anim_y, -1, 1, 0, global.p_skin_colour, 1)
	draw_sprite_ext(spr_player_hair, 0, x, y - anim_y, -1, 1, 0, global.p_hair_colour, 1)
	draw_sprite_ext(spr_player_hat, 0, x, y - anim_y, -1, 1, 0, c_white, 1)
	
	draw_sprite_ext(spr_filler_gun, 0, x - 10, y + 7, 0.75, -0.75, _dir, c_white, 1)
	draw_sprite_ext(spr_player_hand, 0, x - 10, y + 7, 1, -1, _dir, global.p_skin_colour, 1)
}