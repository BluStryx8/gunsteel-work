/// @description Animate and Draw
switch (dir)
{	
	case "down":
		var _image = 0;
		break;
	case "right":
		var _image = 1;
		break;
	case "up":
		var _image = 2;
		break;
	case "left":
		var _image = 3;
		break;
}
var _dir_frames = 14 // Frames for each direction

switch (action)
{
	case "idle":
		if (image_index > (_dir_frames * _image) + 4) image_index = (_dir_frames * _image);
		if (image_index < (_dir_frames * _image)) image_index = (_dir_frames * _image);
		break;
	case "jump_prep":
		if (image_index > (_dir_frames * _image) + 7)
		{
			image_index = (_dir_frames * _image) + 7;
			// Define Jump speed when ready
			if (spd == 0)
			{
				spd = random_range(jump_min_speed, jump_max_speed);
				action_timer = floor(spd) * jump_prep_time + irandom_range(-jump_prep_time, jump_prep_time);
				direction += irandom_range(-spd, spd) * spd;
			}
		}
		break;
	case "jump":
		if (image_index > (_dir_frames * _image) + 9) image_index = (_dir_frames * _image) + 9;
		break;
	case "land":
		if (image_index >= (_dir_frames * _image) + 13)
		{
			// Return to idle
			image_index = (_dir_frames * _image);
			action_timer = 0;
		}
		break;
}

var _bounce = sign(bounce) * round((bounce / 2) - abs(action_timer - (bounce / 2)));

draw_sprite_ext(spr_enemy_slime, 56, x, y + _bounce,
	scale - (_bounce / jump_height_div / 10), scale - (_bounce / jump_height_div / 10), 0, c_white, 0.25);
draw_sprite_ext(spr_enemy_slime, image_index, x, y, scale, scale, 0, color, 0.9);
if (hurt_flash > 0)
{
	draw_sprite_ext(spr_enemy_slime, image_index, x, y, scale, scale, 0, c_white, hurt_flash);
	hurt_flash -= 0.05;
}
if (hurt_flash < 0) hurt_flash = 0;