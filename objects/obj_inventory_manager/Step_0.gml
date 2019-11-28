/// @description Check for key input

audio_group_set_gain(music, global.music_value, 0)
if !audio_is_playing(msc_dungeon)
{
	audio_play_sound(msc_dungeon,1,true)
}

if (room == rm_mainmenu and change_check != -1)
{
	global.p_active = item_type.none;
	inv_update_active(-1);
}
else if (room == rm_game and change_check == -1)
{
	active_item = 0;
	global.p_active = inventory[active_item];
	inv_update_active(active_item);
}
if (global.paused or global.death) exit;	// Exits if paused

// Active Item
if (keyboard_check(ord("1"))) active_item = 0;
if (keyboard_check(ord("2"))) active_item = 1;
if (keyboard_check(ord("3"))) active_item = 2;
if (keyboard_check(ord("4"))) active_item = 3;
if (keyboard_check(ord("5"))) active_item = 4;
if (mouse_wheel_up())
	if (active_item <= 0) active_item = 4 else active_item -= 1;
if (mouse_wheel_down())
	if (active_item >= 4) active_item = 0 else active_item += 1;

if (!global.holstered)
{
	global.p_active = inventory[active_item];
}
else global.p_active = item_type.none;

obj_player.sprite = inv_get_sprite(global.p_active);

// Update current item
if (!global.holstered)
{
	// Check for Change
	if (active_item != change_check)
	{
		inv_update_active(active_item);
	}
}
// Disable held when holstered
else if (change_check != -1)
{
	inv_update_active(-1);
}

// Click
if (!global.in_inv)
{
	if (mouse_check_button(mb_left))  inv_use_script(global.p_active, "left");
	if (mouse_check_button(mb_right)) inv_use_script(global.p_active, "right");
}

// Opens full inventory
if keyboard_check_pressed(ord("I"))
{
	if (!global.in_inv)
	{
		global.in_inv = true;
	}
	else
	{
		global.in_inv = false;
	}
}

/// Drag and Drop
if (global.in_inv)    ///This part find which row or column your mouse is hovering over
{
	mousex = device_mouse_x_to_gui(0);
	mousey = device_mouse_y_to_gui(0);
	var _constraint = true;
	inv_row = 0;
	inv_column = 0;
	// Rows
	for (var _n = 0; _n < gui_hotbar_rows; _n++)
	{
		if (mousey >= camera_get_view_height(0) - gui_holder_height * (_n + 1))
			and (mousey < camera_get_view_height(0) - gui_holder_height * _n)
		{
			inv_row = gui_hotbar_rows - _n;
			break;
		}
	}
	// Columns
	for (var _n = 0; _n < gui_hotbar_columns; _n++)
	{
		if (mousex >= gui_holder_pos_x + (gui_holder_slot_offset_x) * _n)
			and (mousex < gui_holder_pos_x + (gui_holder_slot_offset_x) * (_n + 1))
		{
			inv_column = _n + 1;
			break;
		}
	}
	// Uses row and column to determine which cell your mouse is hovering over
	if (inv_column == 0) inv_row = 0;
	switch(inv_row)
	{
		case 0:
			selected_cell = -1;
			break;
		case 1:
			selected_cell = inv_column - 1;
			break;
		case 2:
			selected_cell = inv_column + 4;
			break;
		case 3:
			selected_cell = inv_column + 9;
			break;
	}
	if (selected_cell == -1) _constraint = false;
	// Sets your pickup item to the cell's inventory reference if there is an item in that cell
	// Subsequently draws it in the draw event
	if(mouse_check_button_pressed(mb_left))
	{
		if (_constraint)
		{
			if (!item_in_hand)
			{
				// Select the item if the current slot is not empty
				if (inventory[selected_cell] != item_type.none)
				{
					pickup_item = selected_cell;
					item_in_hand = true;
				}
			}
			else
			{
				// Swap the item with the slot selected
				if (inventory[selected_cell] = item_type.none)
				{
					// If no item in the drop cell, replace
					inventory[selected_cell] = inventory[pickup_item];
					inventory[pickup_item] = item_type.none;
				}
				else
				{
					// If item in the drop cell, swap
					old_item = inventory[selected_cell];
					inventory[selected_cell] = inventory[pickup_item];
					inventory[pickup_item] = old_item;
				}
				global.p_active = inventory[active_item];	
				inv_update_active(active_item);
				item_in_hand = false;
				pickup_item = -1;
				selected_cell = -1;
			}
		}
		else if (item_in_hand)
		{
			item_in_hand = false;
			pickup_item = -1;
			selected_cell = -1;
		}
	}
	if (mouse_check_button_pressed(mb_right))
	{
		if (_constraint)
		{
			inv_dropitem(inventory[selected_cell]);
			if (pickup_item == selected_cell)
			{
				item_in_hand = false;
				pickup_item = -1;
				selected_cell = -1;
			}
		}
		else if (item_in_hand)
		{
			inv_dropitem(inventory[pickup_item]);
			item_in_hand = false;
			pickup_item = -1;
			selected_cell = -1;
		}
	}
}

/// Backup if item_in_hand was not reset
if (!global.in_inv)
{
	item_in_hand = false;
	selected_cell = -1;
	pickup_item = -1;
}
