/// @description Check for key input
if (global.paused) exit;	// Exits if paused

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
		change_check = active_item;
		obj_player.fire = 0;
		obj_player.focus = 0;
		obj_player.reloading = 0;
		obj_player.wind = 0;
		obj_cursor_bracket.rotate = 0;
		inv_use_script(global.p_active, "change");
	}
}
// Disable held when holstered
else if (change_check != -1)
{
	change_check = -1;
	obj_player.fire = 0;
	obj_player.focus = 0;
	obj_player.reloading = 0;
	obj_player.wind = 0;
	obj_cursor_bracket.rotate = 0;
	inv_use_script(global.p_active, "change");
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
	
	mousex = device_mouse_x_to_gui(0)
	mousey = device_mouse_y_to_gui(0)
	
	
	
		if mousey >= camera_get_view_height(0) - spr_hotbar_height and mousex > gui_holder_pos_x and mousex < gui_holder_pos_x + sprite_get_width(spr_hotbar)
		{
			inv_row = 3
		}
		
		if mousey >= camera_get_view_height(0) - spr_hotbar_height*2 and mousey < camera_get_view_height(0) - spr_hotbar_height and mousex > gui_holder_pos_x and mousex < gui_holder_pos_x + sprite_get_width(spr_hotbar)
		{
			inv_row = 2
		}
		
		if mousey >= camera_get_view_height(0) - spr_hotbar_height*3 and mousey < camera_get_view_height(0) - spr_hotbar_height*2 and mousex > gui_holder_pos_x and mousex < gui_holder_pos_x + sprite_get_width(spr_hotbar)
		{
			inv_row = 1
		}
		
		if mousex >= (gui_holder_pos_x + divider_width) and mousex < (gui_holder_pos_x + divider_width + cell_width) and mousey > camera_get_view_height(0) - spr_hotbar_height*3
		{
			inv_column = 1
		}
		
		if mousex >= (gui_holder_pos_x + divider_width*2 + cell_width) and mousex < (gui_holder_pos_x + divider_width*2 + cell_width*2) and mousey > camera_get_view_height(0) - spr_hotbar_height*3
		{
			inv_column = 2 
		}
		
		if mousex >= (gui_holder_pos_x + divider_width*3 + cell_width*2) and mousex < gui_holder_pos_x + (divider_width*3 + cell_width*3) and mousey > camera_get_view_height(0) - spr_hotbar_height*3
		{
			inv_column = 3
		}

		if mousex >= (gui_holder_pos_x + divider_width*4 + cell_width*3) and mousex < gui_holder_pos_x + (divider_width*4 + cell_width*4) and mousey > camera_get_view_height(0) - spr_hotbar_height*3
		{
			inv_column = 4
		}
		
		if mousex >= (gui_holder_pos_x + divider_width*5) + cell_width*4 and mousex < (gui_holder_pos_x + divider_width*5 + cell_width*5) and mousey > camera_get_view_height(0) - spr_hotbar_height*3
		{
			inv_column = 5
		}
	
	/// Uses row and column to determine which cell your mouse is hovering over
	
		switch(inv_row)
		{
			case 1:
				selected_cell = inv_column -1
			break;
			
			case 2:
				selected_cell = inv_column + 4
			break;
			
			case 3:
				selected_cell = inv_column + 9
			break;
		}
		

/// this part sets your pickup item to the cell's inventory reference if there is an item in that cell
/// this subsequently draws it in the draw event
if(mouse_check_button_pressed(mb_left))
	{
		if inventory[selected_cell] != item_type.none and mousey > camera_get_view_height(0) - spr_hotbar_height*3 and mousex >= gui_holder_width and mousex <= gui_holder_width + spr_hotbar_height * 5
		{
			pickup_item = selected_cell
			item_in_hand = true
		}
		
		else
		{
			item_in_hand = false
		}
	}
	
	
	
	if item_in_hand = true and global.in_furnace = true
	{
		furnace_slot = pickup_item
	}

	if global.in_furnace = true
	{
		if mousex > gui_holder_pos_x and mousex < gui_holder_pos_x +cell_width and mousey > display_get_gui_height()/3 and mousey < display_get_gui_height()/3 + cell_width 
			{
				if mouse_check_button_pressed(mb_right)
				{
					item_in_slot = true
				}
				
				if mouse_check_button_pressed(mb_left)
				{
					item_in_slot = false
				}
			}
	}
	else
	{
		item_in_slot = false
		furnace_slot = -1
		
	}
	

	
	/// if you have an item in your gand, check if the slot you click if empty
	/// if so set your hand to 0, clicked slot to the old slot, old slot to empty then reset variables
	
	if item_in_hand = true
	{
		if (mouse_check_button_pressed(mb_right))
		{
			if inventory[selected_cell] = item_type.none
			{
				inventory[selected_cell] = inventory[pickup_item]
				inventory[pickup_item] = item_type.none
			}
			else
			{
				old_item = inventory[selected_cell];
				inventory[selected_cell] = inventory[pickup_item]
				inventory[pickup_item] = old_item
			}
			global.p_active = inventory[active_item];	
			change_check = active_item;
			obj_player.fire = 0;
			obj_player.focus = 0;
			obj_player.reloading = 0;
			obj_cursor_bracket.rotate = 0;
			inv_use_script(global.p_active, "change");
			item_in_hand = false
			pickup_item = -1
			selected_cell = -1
		}
		
	}
}

/// backup if item_in_hand was not reset
if (!global.in_inv)
{
	item_in_hand = false
	selected_cell = -1
	pickup_item = -1
}
	
if (!global.in_furnace)
{
	furnace_slot = -1
	item_in_slot = false
}

