/// @description Animate and Draw
switch (dir)
{	
	case "right":
		var _dir = 1;
		break;
	case "left":
		var _dir = -1;
		break;
}
if (image_index >= image_number) image_index -= image_number - 1;
draw_sprite_ext(spr_enemy_necro, image_index, x, y, scale * _dir, scale, 0, color, 0.9);

hurt_flash = flash_effect(hurt_flash);