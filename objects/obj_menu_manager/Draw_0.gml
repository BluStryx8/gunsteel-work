/// @description Draws logo and text
var _x = floor(view_get_wport(0) * 1.5);
var _y = floor(view_get_hport(0) * 0.2);
draw_sprite_ext(spr_main_icon, -1, _x, _y, 1, 1, 0, c_white, 1);

// Draws settings text on left panel
_x = floor(view_get_wport(0) * 0.5);
_y = floor(view_get_hport(0) * 0.2);
draw_sprite(spr_main_menu_buttons,1, _x, _y)

// Draws version number
var _x = floor(view_get_wport(0) * 1.95);
var _y = floor(view_get_hport(0) * 0.95);
draw_set_halign(fa_right);
draw_set_color(c_white);
draw_set_font(fnt_stat);
draw_set_alpha(1);
draw_text(_x, _y, string(game_display_name) + " - Version " + string(GM_version));

/// Draw Run Data
// Current Run
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font(fnt_room);
_x = floor(view_get_wport(0) * 2.5);
_y = floor(view_get_hport(0) * 0.15);
draw_text(_x, _y, draw_run);
switch(draw_class)
{
	case "Soldier":
		var _class_id = 0;
		var _max_health = 5;
		break;
	case "Scout":
		var _class_id = 1;
		var _max_health = 3;
		break;
	case "Tinkerer":
		var _class_id = 2;
		var _max_health = 2;
		break;
}
var _starter = obj_inventory_manager.item_definitions[draw_starter, item_properties.sprite_gui];
_x = floor(view_get_wport(0) * 2.4);
_y = floor(view_get_hport(0) * 0.3);
draw_sprite_ext(spr_player_classes, _class_id, _x, _y, 2, 2, 0, c_white, 1);
_x = floor(view_get_wport(0) * 2.6);
draw_sprite_ext(_starter, -1, _x, _y, 2, 2, 0, c_white, 1);

draw_set_halign(fa_left);
draw_set_font(fnt_class_stat);
_x = floor(view_get_wport(0) * 2.4);
_y = floor(view_get_hport(0) * 0.4);
draw_text(_x, _y, "Level " + string(draw_level));
_y = floor(view_get_hport(0) * 0.45);
draw_text(_x, _y, "Score " + string(draw_score));
if (draw_run == "Current Run")
{
	_x = floor(view_get_wport(0) * 2.4);
	_y = floor(view_get_hport(0) * 0.5);
	draw_text(_x, _y, string(draw_health) + " / " + string(_max_health) + " HP");
}

// Best Run
draw_set_halign(fa_center);
draw_set_font(fnt_room);
var _starter = obj_inventory_manager.item_definitions[best_starter, item_properties.name];
_x = floor(view_get_wport(0) * 2.5);
_y = floor(view_get_hport(0) * 0.6);
draw_text(_x, _y, "Best Run");
draw_set_halign(fa_left);
draw_set_font(fnt_class_stat);
_x = floor(view_get_wport(0) * 2.4);
_y = floor(view_get_hport(0) * 0.65);
draw_text(_x, _y, best_class + " - " + _starter);
_y = floor(view_get_hport(0) * 0.7);
draw_text(_x, _y, "Level " + string(best_level));
_y = floor(view_get_hport(0) * 0.75);
draw_text(_x, _y, "Score " + string(best_score));