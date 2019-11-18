/// @description Insert description here
var _x = camera_get_view_width(0) / 2;
var _y = camera_get_view_height(0) / 2;
if (alpha < 1 and !restarting) alpha += 0.02;
if (alpha >= 1 and keyboard_check_released(ord("E")) and !restarting)
	restarting = true;
if (restarting)
{
	draw_set_alpha(1 - alpha);
	draw_set_color(c_black);
	draw_rectangle(-2, -2, camera_get_view_width(0) + 2, camera_get_view_height(0) + 2, false);
	if (alpha > 0) alpha -= 0.02;
	else if (alpha <= 0) game_restart();
}

// Draw
draw_set_halign(fa_center);
draw_set_font(fnt_room);
draw_set_alpha(alpha / 3);
draw_set_color(c_black);
draw_rectangle(-2, -2, camera_get_view_width(0) + 2, camera_get_view_height(0) + 2, false);
draw_set_alpha(alpha);
draw_set_color(c_white);
draw_sprite_ext(spr_gameover, -1, _x, _y - 128, 2, 2, 0, c_white, alpha);
_y += 32;
var _scale = 2;
var _class = 0;
var _starter = obj_inventory_manager.item_definitions[global.starter, item_properties.sprite_gui];
switch (global.class)
{
	case "Soldier":
		_class = 0;
		break;
	case "Scout":
		_class = 1;
		break;
	case "Tinkerer":
		_class = 2;
		break;
}
draw_sprite_ext(spr_player_classes, _class, _x - 96, _y + 32, _scale, _scale, 0, c_white, alpha);
draw_text(_x - 96, _y + 96, global.class)
draw_sprite_ext(_starter, -1, _x + 96, _y + 32, _scale, _scale, 0, c_white, alpha);
_starter = obj_inventory_manager.item_definitions[global.starter, item_properties.name];
draw_text(_x + 96, _y + 96, _starter)
_y += 96;
draw_text(_x, _y + 64, "Floor " + string(global.level));
draw_text(_x, _y + 96, "Final Score: " + string(score));
draw_text(_x, _y + 160, "Press E to Restart");