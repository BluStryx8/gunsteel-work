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
switch (action)
{
	case "idle":
		if (image_index > (14 * _image) + 4) image_index = (14 * _image);
		if (image_index < (14 * _image)) image_index = (14 * _image);
		break;
	case "jump_prep":
		if (image_index > (14 * _image) + 7)
		{
			image_index = (14 * _image) + 7;
			if (spd == 0)
			{
				spd = irandom_range(3, 5);
				action_timer = spd * 5 + irandom_range(-5, 5);
			}
		}
		break;
	case "jump":
		if (image_index > (14 * _image) + 9) image_index = (14 * _image) + 9;
		break;
	case "land":
		if (image_index >= (14 * _image) + 13)
		{
			image_index = (14 * _image);
			action_timer = 0;
		}
		break;
}
draw_sprite_ext(spr_enemy_slime, image_index, x, y, 1, 1, 0, c_lime, 1);
if (hurt_flash > 0)
{
	draw_sprite_ext(spr_enemy_slime, image_index, x, y, 1, 1, 0, c_white, hurt_flash);
	hurt_flash -= 0.05;
}
if (hurt_flash < 0) hurt_flash = 0;