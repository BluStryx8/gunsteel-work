/// @description Draws the bat
speed = 0;	// Stops bat in case of pause

if (image_index > 5) image_index = 0;
draw_sprite_ext(spr_enemy_bat, 7, x, y + 20, scale * 2, scale * 2, 0, c_white, 0.25);
draw_sprite_ext(spr_enemy_bat, image_index, x, y, scale * 2, scale * 2, 0, color, 1);
if (hurt_flash > 0)
{
	draw_sprite_ext(spr_enemy_bat, 6, x, y, scale * 2, scale * 2, 0, c_white, hurt_flash);
	hurt_flash -= 0.05;
}
if (hurt_flash < 0) hurt_flash = 0;