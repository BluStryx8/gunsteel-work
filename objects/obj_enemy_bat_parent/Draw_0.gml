/// @description Draws the bat
speed = 0;	// Stops bat in case of pause

if (image_index > 5) image_index = 0;
draw_sprite_ext(spr_enemy_bat, 6, x, y + 20, scale * 2, scale * 2, 0, c_white, 0.25);
draw_sprite_ext(spr_enemy_bat, image_index, x, y, scale * 2, scale * 2, 0, color, 1);

hurt_flash = flash_effect(hurt_flash);