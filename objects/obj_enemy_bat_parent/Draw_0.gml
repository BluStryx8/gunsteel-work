/// @description Draws the bat

if image_index > 5 image_index = 0;
draw_sprite_ext(spr_enemy_bat, image_index, x, y, scale, scale, 0, c_white, 0.9);