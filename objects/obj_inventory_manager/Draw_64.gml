/// @description Draw Inventory
if (global.truepause) exit;
var _alpha = 1;
if (global.death and instance_exists(obj_game_over)) _alpha -= obj_game_over.alpha;

// Set Variables
gui_holder_width		 = sprite_get_width(spr_hotbar);
gui_holder_height		 = sprite_get_height(spr_hotbar);
gui_holder_pos_x		 = (camera_get_view_width(0) / 2) - (gui_holder_width / 2);
gui_holder_pad			 = 6;
gui_holder_slot_offset_x = 64 + gui_holder_pad;
gui_hotbar_rows			 = 3;
gui_hotbar_columns		 = 5;
display_set_gui_size(camera_get_view_width(0), camera_get_view_height(0));
if (global.in_inv) hotbar_height = view_get_hport(0) - gui_holder_height * 3
	else hotbar_height = view_get_hport(0) - gui_holder_height;
gui_holder_pos_y = 32 + hotbar_height;

// Declare Draw Constants
draw_set_halign(fa_right);
draw_set_font(fnt_inventory);
draw_set_alpha(_alpha);
if global.paused var _col = make_colour_hsv(0, 0, 150) else var _col = c_white;
draw_set_color(_col);

// Draw level
if (global.level > 0)
{
	draw_set_font(fnt_room);
	draw_text(camera_get_view_width(0) - 32, 32, "- Floor " + string(global.level) + " -");
	draw_set_font(fnt_inventory);
	draw_text(camera_get_view_width(0) - 32, 64, "Score: " + string(score));
}

// Draw Hotbar
draw_sprite_ext(spr_hotbar, -1, gui_holder_pos_x, hotbar_height, 1, 1, 0, _col, _alpha);
draw_sprite_ext(spr_active, -1, gui_holder_pos_x + (gui_holder_slot_offset_x * active_item) + 38,
				gui_holder_pos_y + gui_holder_pad, 1, 1, 0, _col, _alpha);
for (var _inv = 0; _inv <= HOTBAR; _inv++)
{
	item_define_index = inventory[_inv];
	if (item_define_index != item_type.none)
	{
		draw_sprite_ext(item_definitions[item_define_index, item_properties.sprite_gui], -1,
					(gui_holder_pos_x + gui_holder_pad) + (gui_holder_slot_offset_x * _inv) + 32,
					(gui_holder_pos_y + gui_holder_pad), 1, 1, 0, _col, _alpha);
		if obj_inventory_manager.item_definitions[item_define_index, item_properties.type] != "firearm"
		{
			draw_text((gui_holder_pos_x + gui_holder_pad) + (gui_holder_slot_offset_x * _inv) + 57,
						(gui_holder_pos_y + gui_holder_pad) + 10,
						string(item_definitions[item_define_index, item_properties.amount]));
		}
	}
}

// Draw extended inventory
if (global.in_inv)
{
	// Draws extra hotbars
	draw_sprite_ext(spr_hotbar, 1, gui_holder_pos_x, view_get_hport(0) - gui_holder_height, 1, 1, 0, _col, _alpha);
	draw_sprite_ext(spr_hotbar, 1, gui_holder_pos_x, view_get_hport(0) - gui_holder_height * 2, 1, 1, 0, _col, _alpha);
	var _offset = gui_holder_height;
	for (var _inv = HOTBAR + 1; _inv <= INVENTORY; _inv++)
	{
		item_define_index = inventory[_inv];
		if (item_define_index != item_type.none)
		{
			if (_inv < (HOTBAR + 1) * 2)
			{
				_offset = gui_holder_height;
				draw_sprite_ext(item_definitions[item_define_index, item_properties.sprite_gui], -1,
								(gui_holder_pos_x + gui_holder_pad) + (gui_holder_slot_offset_x * (_inv - 5)) + 32,
								(gui_holder_pos_y + gui_holder_pad + _offset), 1, 1, 0, _col, _alpha);
				if (obj_inventory_manager.item_definitions[item_define_index, item_properties.type] != "firearm")
					draw_text((gui_holder_pos_x + gui_holder_pad) + (gui_holder_slot_offset_x * (_inv - 5)) + 57,
								(gui_holder_pos_y + gui_holder_pad + _offset) + 10,
								string(item_definitions[item_define_index, item_properties.amount]));
			}
			else
			{
				_offset = 2 * gui_holder_height;
				draw_sprite_ext(item_definitions[item_define_index, item_properties.sprite_gui], -1,
								(gui_holder_pos_x + gui_holder_pad) + (gui_holder_slot_offset_x * (_inv - 10)) + 32,
								(gui_holder_pos_y + gui_holder_pad + _offset), 1, 1, 0, _col, _alpha);
				if (obj_inventory_manager.item_definitions[item_define_index, item_properties.type] != "firearm")
					draw_text((gui_holder_pos_x + gui_holder_pad) + (gui_holder_slot_offset_x * (_inv - 10)) + 57,
								(gui_holder_pos_y + gui_holder_pad + _offset) + 10,
								string(item_definitions[item_define_index, item_properties.amount]));
			}
		}
	}
	// Draw Ammo Counts
	var _x = gui_holder_pos_x - 32;
	var _y = hotbar_height - 16;
	draw_set_halign(fa_right);
	draw_text(_x + 16, _y, "Ammo Count");
	_y += 16;
	draw_sprite_ext(spr_ammo_riflebullet, -1, _x + 16, _y + 16, 1, 1, 270, _col, 1);
	draw_text(_x, _y + 8, string(global.ammo_rifle));
	_y += 32;
	draw_sprite_ext(spr_ammo_sniperbullet, -1, _x + 16, _y + 16, 1, 1, 270, _col, 1);
	draw_text(_x, _y + 8, string(global.ammo_sniper));
	_y += 32;
	draw_sprite_ext(spr_ammo_shotgunbullet, -1, _x + 16, _y + 16, 1, 1, 270, _col, 1);
	draw_text(_x, _y + 8, string(global.ammo_shotgun));
	_y += 32;
	draw_sprite_ext(spr_gui_ammo_crate, -1, _x + 16, _y + 16, 0.5, 0.5, 0, _col, 1);
	draw_text(_x, _y + 8, string(global.ammo_special));
	draw_set_halign(fa_right);
	
	// If hovering over item, draw stats
	if (selected_cell > -1)
		if (inventory[selected_cell] != item_type.none and mousey > camera_get_view_height(0) - gui_holder_height * gui_hotbar_rows)
		{
			var _inv    = inventory[selected_cell];
			draw_stats(_inv, gui_holder_pos_x + gui_holder_width + 16, hotbar_height - 16);
			draw_set_font(fnt_inventory);
		}
	
	/// Draw Held Item and Tooltips
	var _x = gui_holder_pos_x - 32;
	var _y = camera_get_view_height(0) - 32;
	var _l_click = "Select Item";		// Left Click selects, swaps or deselects.
	var _r_click_1 = "Drop";			// Prefix. Most items are drop, but consumables are use.
	var _r_click_2 = "Item";			// Suffix. Changes from selected item to hovering over depending on situation
	draw_set_halign(fa_right);
	draw_set_font(fnt_item_tip);
	if (item_in_hand)
	{
		if (pickup_item != -1)			// If an item is selected
		{
			var _item = inventory[pickup_item];
			draw_sprite_ext(item_definitions[_item, item_properties.sprite_gui], -1,
							mousex, mousey, 1, 1, 0, _col, 1);
			_l_click = "Swap Selected";
			if (selected_cell == -1 or selected_cell == pickup_item)	// If hovering over same cell, or outside
			{
				_l_click = "Deselect";
				_r_click_2 = "Selected";
				if (_item > item_type.w_length and _item < item_type.c_length)	// If the selected is a consumable
					_r_click_1 = "Use";
			}
		}
	}
	if (selected_cell != -1)			// If hovering in inventory
	{
		var _item = inventory[selected_cell];
		if (_item > item_type.w_length and _item < item_type.c_length)	// If hovering over a consumable
			_r_click_1 = "Use";
	}
	draw_text(_x, _y, "[Left Click] - " + _l_click);
	draw_text(_x, _y + 16, "[Right Click] - "  + _r_click_1 + " " + _r_click_2);
}
if (global.in_inv) exit;

/// Mouse Tip
// Define
var _left_mouse = script_get_name(item_definitions[inventory[active_item], item_properties.use_left]);
var _right_mouse = script_get_name(item_definitions[inventory[active_item], item_properties.use_right]);
var _left_text = "null";
var _right_text = "null";

// Check Left Mouse
switch (_left_mouse)
{
	case "weapon_shoot":
		_left_text = "Shoot";
		break;
	case "use_potion":
		_left_text = "same";
		_right_text = "Heal";
		break;
	case "use_ammo_crate":
		_left_text = "same";
		_right_text = "Gain Ammo";
		break;
}
// Check Right Mouse
switch (_right_mouse)
{
	case "fire_mode":
		if (obj_player.atk_type == "Semi-automatic")
			var _extra = "Automatic";
		else
		{
			if (obj_player.burst > 1)
				var _extra = "Burst";
			else
				var _extra = "Semi-automatic";
		}
		_right_text = "Switch to " + _extra; 
		break;
	case "fire_mode_burst":
		if (obj_player.atk_type == "Semi-automatic")
		{
			if (obj_player.burst > 1)
				var _extra = "Automatic";
			else
				var _extra = "Burst";
		}
		else
			var _extra = "Semi-automatic";
		_right_text = "Switch to " + _extra;
		break;
	case "weapon_pump":
		_right_text = "Pump Weapon";
		break;
	case "scope":
		if (obj_player.focus != 1)
			_right_text = "Scope";
		else
			_right_text = "Unscope";
		break;
}
// Draw Tooltip
draw_set_halign(fa_left);
draw_set_font(fnt_inventory);
var _x_offset = 32;
var _y = hotbar_height - 32;
var _x_text_offset = 24;
var _y_text_offset = -8;
// If left text is same as right, use the both mouse display
if (_left_text == "same")
{
	var _x = _x_offset + gui_holder_pos_x + (gui_holder_width / 4);
	draw_sprite_ext(spr_mouse_tip, 2, _x, _y, 1, 1, 0, c_white, 1);
	draw_text(_x + _x_text_offset, _y + _y_text_offset, _right_text);
}
else
{
	// Set x offset for left text
	if (_right_text = "null")
		var _x = _x_offset + gui_holder_pos_x + (gui_holder_width / 4);
	else
		var _x = _x_offset + gui_holder_pos_x;
	// Handle left text
	switch (_left_text)
	{
		case "Shoot":
			// Changes the text to reload or disabled depending on weapon state
			if (obj_player.pump != 0)
				_left_text = "---";
			if (obj_player.ammo <= 0)
				_left_text = "Reload";
			if (obj_player.reloading != 0)
				_left_text = "---";
			// Change mouse icon to blank if the mouse action is disabled
			if (_left_text == "---")
				var _index = 3;
			else
				var _index = 0;
			// Draw
			draw_sprite_ext(spr_mouse_tip, _index, _x, _y, 1, 1, 0, c_white, 1);
			draw_text(_x + _x_text_offset, _y + _y_text_offset, _left_text);
			break;
	}
	// Handle right text
	if (_right_text != "null")
	{
		// Display disabled pump if reloading
		if (_right_text == "Pump Weapon" and obj_player.reloading != 0)
			_right_text = "---";
		// Change mouse icon to blank if the mouse action is disabled
		if (_right_text == "---")
			var _index = 3;
		else
			var _index = 1;
		// Draw
		var _x = _x_offset + gui_holder_pos_x + (gui_holder_width / 2);
		draw_sprite_ext(spr_mouse_tip, _index, _x, _y, 1, 1, 0, c_white, 1);
		draw_text(_x + _x_text_offset, _y + _y_text_offset, _right_text);
	}
}
// Draw Weapon
var _weap_offset_x = -48;	// x offset from the bottom right hand corner
var _weap_offset_y = -48;	// y offset from the bottom right hand corner

if (!global.holstered)
{
	// Draw Current Weapon
	draw_set_halign(fa_center);
	var _sprite = item_definitions[inventory[active_item], item_properties.sprite_gui];
	var _weapon = false;
	var _total_ammo = 0;
	switch (obj_player.type)
	{
		case "Handgun":
			draw_sprite_ext(_sprite, -1, view_get_wport(0) + _weap_offset_x - 16,
							view_get_hport(0) + _weap_offset_y - 16, 1, 1, 0, _col, _alpha);
			_weapon = true;
			_total_ammo = "Infinite";
			break;
		case "Assault Rifle":
			draw_sprite_ext(_sprite, -1, view_get_wport(0) + _weap_offset_x - 16,
							view_get_hport(0) + _weap_offset_y - 16, 2, 2, 0, _col, _alpha);
			_weapon = true;
			_total_ammo = global.ammo_rifle;
			break;
		case "Shotgun":
			draw_sprite_ext(_sprite, -1, view_get_wport(0) + _weap_offset_x - 16,
							view_get_hport(0) + _weap_offset_y - 16, 2, 2, 0, _col, _alpha);
			_weapon = true;
			_total_ammo = global.ammo_shotgun;
			break;
		case "Sniper Rifle":
			draw_sprite_ext(_sprite, -1, view_get_wport(0) + _weap_offset_x - 16,
							view_get_hport(0) + _weap_offset_y - 16, 2, 2, 0, _col, _alpha);
			_weapon = true;
			_total_ammo = global.ammo_sniper;
			break;
		case "Minigun":
			draw_sprite_ext(_sprite, -1, view_get_wport(0) + _weap_offset_x - 16,
							view_get_hport(0) + _weap_offset_y - 16, 2, 2, 0, _col, _alpha);
			_weapon = true;
			_total_ammo = global.ammo_special;
			break;
	}
	if (_weapon)
	{
		// If the item is a weapon, show text
		if (obj_player.reloading > 0)
			draw_text(view_get_wport(0) + _weap_offset_x - 16, view_get_hport(0) + _weap_offset_y - 64,
						"Reloading...")
		else draw_text(view_get_wport(0) + _weap_offset_x - 16, view_get_hport(0) + _weap_offset_y - 64,
						string(obj_player.ammo) + " / " + string(obj_player.max_ammo));
		draw_set_halign(fa_right);
		if (_total_ammo != "Infinite")
			draw_text(view_get_wport(0) + _weap_offset_x - 16, view_get_hport(0) + _weap_offset_y + 16,
						string(_total_ammo));
		draw_set_halign(fa_center);
	}

	/// Draw Ammo
	var _x = _weap_offset_x;		// x offset from the bottom right hand corner
	var _y = _weap_offset_y - 80;	// y offset from the bottom right hand corner plus 80 above the weapon
	var _top_pad = 80;				// Height from top when to move to next row
	// Set which bullet to draw
	var _draw = spr_gui_empty;
	switch (obj_player.type)
	{
		case "Handgun":
			_draw = spr_ammo_pistolbullet;
			break;
		case "Assault Rifle":
			_draw = spr_ammo_riflebullet;
			break;
		case "Sniper Rifle":
			_draw = spr_ammo_sniperbullet;
			break;
		case "Shotgun":
			_draw = spr_ammo_shotgunbullet;
	}
	// Draw bullets
	if (_draw != spr_gui_empty)
		for (var _ammo = obj_player.ammo; _ammo > 0; _ammo--)
		{
			draw_sprite_ext(_draw, -1, view_get_wport(0) + _x, view_get_hport(0) + _y,
							1, 1, 0, _col, _alpha);
			_y -= 10;
			if ((view_get_hport(0) + _y - _top_pad) <= 0)
			{
				_x += _weap_offset_x;
				_y = _weap_offset_y - 80;
			}
		}
	
	/// Draw Fire Mode
	var _mode_x_offset = _weap_offset_x + 32; // x offset of bullets to draw
	var _mode_y_offset = _weap_offset_y + 24; // y offset of bullets to draw
	// Bullets to draw representative of atk modes
	var _bullets = 1;
	if (obj_player.atk_type == "Semi-automatic" and obj_player.burst > 1) _bullets = 2;
	if (obj_player.atk_type == "Automatic") _bullets = 3;

	if (_draw != spr_gui_empty)
	{
		draw_sprite_ext(_draw, -1, view_get_wport(0) + _mode_x_offset * 2,
						view_get_hport(0) + _mode_y_offset, 1, 1, 270, _col, _alpha);
		if (_bullets >= 2) draw_sprite_ext(_draw, -1, view_get_wport(0) + _mode_x_offset,
										view_get_hport(0) + _mode_y_offset, 1, 1, 270, _col, _alpha);
		if (_bullets >= 3) draw_sprite_ext(_draw, -1, view_get_wport(0) + _mode_x_offset * 3,
										view_get_hport(0) + _mode_y_offset, 1, 1, 270, _col, _alpha);
	}
	if (obj_player.type == "Minigun")
	{
		// Special case for Miniguns
		_draw = spr_gui_ammo_crate;
		draw_sprite_ext(_draw, -1, view_get_wport(0) + _mode_x_offset * 2,
						view_get_hport(0) + _mode_y_offset, 0.5, 0.5, 0, _col, _alpha);
	}
}
if (global.paused and !global.settings)
{
	// Set Up
	if (logo_alpha < 1)
	{
		logo_alpha = logo_alpha + 0.05;
	}
	var _alpha = logo_alpha;
	var _width = display_get_gui_width();
	var _height = display_get_gui_height();
	var _scale = 1;
	var _logo_height = _height * 2 / 10;
	draw_sprite_ext(spr_main_icon, 0, _width / 2, _logo_height,
					_scale, _scale, 0, c_white, logo_alpha);
	
	// Define Button Heights
	var _button_height_1 = _height * 5 / 10;
	var _button_height_2 = _height * 6 / 10;
	var _button_height_3 = _height * 7 / 10;
	var _button_height_4 = _height * 8 / 10;
	// Draw Continue Button
	var _sprite = spr_main_menu_buttons;
	if (hover == 1 and !clicked)
		var _sprite = spr_main_menu_buttons_select;
	draw_sprite_ext(_sprite, 3, _width / 2, _button_height_1, _scale, _scale, 0, c_white, _alpha);

	// Draw Options Button
	var _sprite = spr_main_menu_buttons;
	if (hover == 2 and !clicked)
		var _sprite = spr_main_menu_buttons_select;
	draw_sprite_ext(_sprite, 1, _width / 2, _button_height_2, _scale, _scale, 0, c_white, _alpha);

	// Draw Controls Button
	var _sprite = spr_main_menu_buttons;
	if (hover == 3 and !clicked)
		var _sprite = spr_main_menu_buttons_select;
	draw_sprite_ext(_sprite, 9, _width / 2, _button_height_3, _scale, _scale, 0, c_white, _alpha);

	// Draw Quit Button
	var _sprite = spr_main_menu_buttons;
	if (hover == 4 and !clicked)
		var _sprite = spr_main_menu_buttons_select;
	draw_sprite_ext(_sprite, 2, _width / 2, _button_height_4, _scale, _scale, 0, c_white, _alpha);
	
	// Pause Menu Code
	var _top	= sprite_get_bbox_top(spr_main_menu_buttons) - sprite_get_yoffset(spr_main_menu_buttons);
	var _bottom = sprite_get_bbox_bottom(spr_main_menu_buttons) - sprite_get_yoffset(spr_main_menu_buttons);
	var _left	= sprite_get_bbox_left(spr_main_menu_buttons) - sprite_get_xoffset(spr_main_menu_buttons);
	var _right	= sprite_get_bbox_right(spr_main_menu_buttons) - sprite_get_xoffset(spr_main_menu_buttons);
	var _sound = false;
	pmousex = device_mouse_x_to_gui(0);
	pmousey = device_mouse_y_to_gui(0);
	
	// Check if hovering over button
	if (pmousex >= _width / 2 + _left and pmousex <= _width / 2 + _right)
	{
		if (pmousey >= _button_height_1 + _top) and (pmousey < _button_height_1 + _bottom)
		{
			if (hover != 1 and !clicked)
				var _sound = true;
			hover = 1;
		}
		else if (pmousey >= _button_height_2 + _top) and (pmousey < _button_height_2 + _bottom)
		{
			if (hover != 2 and !clicked)
				var _sound = true;
			hover = 2;
		}
		else if (pmousey >= _button_height_3 + _top) and (pmousey < _button_height_3 + _bottom)
		{
			if (hover != 3 and !clicked)
				var _sound = true;
			hover = 3;
		}
		else if (pmousey >= _button_height_4 + _top) and (pmousey < _button_height_4 + _bottom)
		{
			if (hover != 4 and !clicked)
				var _sound = true;
			hover = 4;
		}
		else hover = 0;
	}
	else hover = 0;
	if (clicked) hover = 0;
	
	// Sound
	if (_sound)
	{
		audio_group_set_gain(audiogrp_sounds, global.sound_value, 0);
		audio_stop_sound(snd_reload_eject_clip);
		audio_play_sound(snd_reload_eject_clip, 1, false);
	}
	
	// Click Handling
	if (hover != 0 and mouse_check_button_pressed(mb_left))
	{
		switch (hover)
		{
			case 1:
				// Continue
				global.paused = false;
				global.settings = false;
				break;
			case 2:
				// Settings
				global.settings = true;
				scr_settings_buttons_pause_menu();
				break;
			case 3:
				// Controls
				var _control = instance_create_layer(0, 0, "control", obj_keyboard_help);
				_control.master = id;
				clicked = true;
				break;
			case 4:
				// Quit
				global.truepause = true;
				instance_create_layer(x, y, "fade", obj_fade_out_menu);
				global.settings = false;
				global.holstered = true;
				break;
		}
	}
}
else
{
	logo_alpha = 0;
	clicked = false;
}