/// @description Draw Player
// Scale (if on title screen or not)
if (starting) global.p_scale = 4
else global.p_scale = 1;
image_xscale = global.p_scale;
image_yscale = global.p_scale;
var _alpha = 1;

// Decide Flash
var _times = 1;
var _flash = 0;
if (dodge > 0) or (immune > 0 and round(immune / 5) mod 2 == 0)
{
	if (dodge > 0) _flash += (dodge / move_speed) / 2;
	if (immune > 0 and round(immune / 5) mod 2 == 0) _flash += 0.1;
	_times = 2;
}

if (global.death)
{
	if (immune != 100)
	{
		_alpha = (immune - 1) / 20;
		_flash = _alpha;
		if (_flash > 0) _times = 2;
		if (immune == 1)
		{
			immune = 100;
			instance_create_layer(x, y, "HUD", obj_game_over);
		}
		else if (immune > 1) immune -= 1;
	}
	else
	{
		_alpha = 0;
		_flash = 0;
		_times = 1;
	}
}

if (dir <= 90 or dir >= 270)
{
	// Facing right
	if (dodge > 0)
	{
		// Dodge afterimages
		draw_sprite_ext(spr_player_collision, -1, xprev[0], yprev[0],
						(global.p_scale * 9) / 10, (global.p_scale * 9) / 10, 0, global.p_dash_colour, 0.4);
		draw_sprite_ext(spr_player_collision, -1, xprev[1], yprev[1],
						(global.p_scale * 8) / 10, (global.p_scale * 8) / 10, 0, global.p_dash_colour, 0.3);
		draw_sprite_ext(spr_player_collision, -1, xprev[2], yprev[2],
						(global.p_scale * 7) / 10, (global.p_scale * 7) / 10, 0, global.p_dash_colour, 0.2);
	}
	if (!global.death) draw_sprite_ext(spr_player_shadow, 0, x, y + 17 * global.p_scale,
										global.p_scale, global.p_scale, 0, c_white, 0.25);
	for (var _n = 0; _n < _times; _n++)
	{
		// Set up Shader
		if (_n == 1)
		{
			shader_set(shd_flash);
			var _shd_alpha = shader_get_uniform(shd_flash, "_alpha");	// Finds the variable inside the shader
			shader_set_uniform_f(_shd_alpha, _flash);
		}
		// Draw Player
		draw_sprite_ext(spr_player_feet, 0, x + (4 + anim_x) * global.p_scale, y + (15 + anim_y) * global.p_scale,
						global.p_scale, global.p_scale, 0, global.p_skin_colour, _alpha)
		draw_sprite_ext(spr_player_feet, 0, x - (4 + anim_x) * global.p_scale, y + (14 - anim_y + still) * global.p_scale,
						global.p_scale, global.p_scale, 0, global.p_skin_colour, _alpha)
		draw_sprite_ext(spr_player_pants, 0, x, y,
						global.p_scale, global.p_scale, 0, global.p_pants_colour, _alpha)
		draw_sprite_ext(spr_player_legs, 0, x + (4 + anim_x) * global.p_scale, y + (11 + anim_y) * global.p_scale,
						global.p_scale, global.p_scale, 0, global.p_pants_colour, _alpha)
		draw_sprite_ext(spr_player_legs, 0, x - (4 + anim_x) * global.p_scale, y + (10 - anim_y + still) * global.p_scale,
						global.p_scale, global.p_scale, 0, global.p_pants_colour, _alpha)
		if (hands <= 1) draw_sprite_ext(spr_player_hand, 0, x + (10 - anim_x) * global.p_scale, y + 7 * global.p_scale,
						global.p_scale, global.p_scale, 0, global.p_skin_colour, _alpha)
		draw_sprite_ext(spr_player_body, 0, x, y,
						global.p_scale, global.p_scale, 0, global.p_shirt_colour, _alpha)
		draw_sprite_ext(spr_player_bodyupper, 0, x, y,
						global.p_scale, global.p_scale, 0, c_white, _alpha)
		if (hands == 0) draw_sprite_ext(spr_player_hand, 0, x - (7 - anim_x) * global.p_scale, y + 7 * global.p_scale,
						global.p_scale, global.p_scale, 0, global.p_skin_colour, _alpha)
		draw_sprite_ext(spr_player_head, 0, x, y - anim_y * global.p_scale,
						global.p_scale, global.p_scale, 0, global.p_skin_colour, _alpha)
		draw_sprite_ext(spr_player_shade, 0, x, y - anim_y * global.p_scale,
						global.p_scale, global.p_scale, 0, global.p_skin_colour, _alpha)
		draw_sprite_ext(spr_player_eyes, 0, x, y - anim_y * global.p_scale,
						global.p_scale, global.p_scale, 0, global.p_hair_colour, _alpha)
		draw_sprite_ext(spr_player_hair, 0, x, y - anim_y * global.p_scale,
						global.p_scale, global.p_scale, 0, global.p_hair_colour, _alpha)
		draw_sprite_ext(spr_player_hat, 0, x, y - anim_y * global.p_scale,
						global.p_scale, global.p_scale, 0, c_white, _alpha)
		// Draw weapon
		if (hands >= 1) draw_sprite_ext(sprite, 0, x + offset[0] * global.p_scale, y + offset[1] * global.p_scale,
										global.p_scale, global.p_scale, dir, c_white, _alpha)
		// Reset Shader
		shader_reset();
	}
	// Hitbox
	if (sneak) draw_sprite_ext(spr_player_hitbox, 1, x, y, global.p_scale, global.p_scale, 0, c_white, 0.2);
}
else
{
	// Facing left
	if (dodge > 0)
	{
		// Dodge afterimages
		draw_sprite_ext(spr_player_collision, -1, xprev[0], yprev[0],
						-(global.p_scale * 9) / 10, (global.p_scale * 9) / 10, 0, global.p_dash_colour, 0.4);
		draw_sprite_ext(spr_player_collision, -1, xprev[1], yprev[1],
						-(global.p_scale * 8) / 10, (global.p_scale * 8) / 10, 0, global.p_dash_colour, 0.3);
		draw_sprite_ext(spr_player_collision, -1, xprev[2], yprev[2],
						-(global.p_scale * 7) / 10, (global.p_scale * 7) / 10, 0, global.p_dash_colour, 0.2);
	}
	if (!global.death) draw_sprite_ext(spr_player_shadow, 0, x, y + 17 * global.p_scale,
										global.p_scale, global.p_scale, 0, c_white, 0.25);
	for (var _n = 0; _n < _times; _n++)
	{
		// Set up Shader
		if (_n == 1)
		{
			shader_set(shd_flash);
			var _shd_alpha = shader_get_uniform(shd_flash, "_alpha");	// Finds the variable inside the shader
			shader_set_uniform_f(_shd_alpha, _flash);
		}
		draw_sprite_ext(spr_player_feet, 0, x + (4 + anim_x) * global.p_scale, y + (14 - anim_y + still) * global.p_scale,
						-global.p_scale, global.p_scale, 0, global.p_skin_colour, _alpha)
		draw_sprite_ext(spr_player_feet, 0, x - (4 + anim_x) * global.p_scale, y + (15 + anim_y) * global.p_scale,
						-global.p_scale, global.p_scale, 0, global.p_skin_colour, _alpha)
		draw_sprite_ext(spr_player_pants, 0, x, y,
						-global.p_scale, global.p_scale, 0, global.p_pants_colour, _alpha)
		draw_sprite_ext(spr_player_legs, 0, x + (4 + anim_x) * global.p_scale, y + (10 - anim_y + still) * global.p_scale,
						-global.p_scale, global.p_scale, 0, global.p_pants_colour, _alpha)
		draw_sprite_ext(spr_player_legs, 0, x -( 4 + anim_x) * global.p_scale, y + (11 + anim_y) * global.p_scale,
						-global.p_scale, global.p_scale, 0, global.p_pants_colour, _alpha)
		if (hands == 0) draw_sprite_ext(spr_player_hand, 0, x - (10 + anim_x) * global.p_scale, y + 7 * global.p_scale,
						-global.p_scale, global.p_scale, 0, global.p_skin_colour, _alpha)
		draw_sprite_ext(spr_player_body, 0, x, y,
						-global.p_scale, global.p_scale, 0, global.p_shirt_colour, _alpha)
		draw_sprite_ext(spr_player_bodyupper, 0, x, y,
						-global.p_scale, global.p_scale, 0, c_white, _alpha)
		if (hands <= 1) draw_sprite_ext(spr_player_hand, 0, x + (7 + anim_x) * global.p_scale, y + 7 * global.p_scale,
						-global.p_scale, global.p_scale, 0, global.p_skin_colour, _alpha)
		draw_sprite_ext(spr_player_head, 0, x, y - anim_y * global.p_scale,
						-global.p_scale, global.p_scale, 0, global.p_skin_colour, _alpha)
		draw_sprite_ext(spr_player_shade, 0, x, y - anim_y * global.p_scale,
						-global.p_scale, global.p_scale, 0, global.p_skin_colour, _alpha)
		draw_sprite_ext(spr_player_eyes, 0, x, y - anim_y * global.p_scale,
						-global.p_scale, global.p_scale, 0, global.p_hair_colour, _alpha)
		draw_sprite_ext(spr_player_hair, 0, x, y - anim_y * global.p_scale,
						-global.p_scale, global.p_scale, 0, global.p_hair_colour, _alpha)
		draw_sprite_ext(spr_player_hat, 0, x, y - anim_y * global.p_scale,
						-global.p_scale, global.p_scale, 0, c_white, _alpha)
		// Draw weapon (weapon positioned differently depending on number of hands)
		if (hands == 2) draw_sprite_ext(sprite, 0, x - offset[0] * global.p_scale, y + offset[1] * global.p_scale,
										global.p_scale, -global.p_scale, dir, c_white, _alpha)
		else if (hands >= 1) draw_sprite_ext(sprite, 0, x + (offset[0] + offset[2]) * global.p_scale, y + offset[1] * global.p_scale,
											global.p_scale, -global.p_scale, dir, c_white, _alpha)
		// Reset Shader
		shader_reset();
	}
	// Hitbox
	if (sneak) draw_sprite_ext(spr_player_hitbox, 1, x, y,
								-global.p_scale, global.p_scale, 0, c_white, 0.2);
}