/// @description Check for key input
if (global.paused) exit;	// Exits if paused

// Active Item
if (keyboard_check(global.p_inv_1)) active_item = 0;
if (keyboard_check(global.p_inv_2)) active_item = 1;
if (keyboard_check(global.p_inv_3)) active_item = 2;
if (keyboard_check(global.p_inv_4)) active_item = 3;
if (keyboard_check(global.p_inv_5)) active_item = 4;
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
		inv_use_script(global.p_active, "change");
	}
}
// Disable held when holstered
else if (change_check != -1)
{
	change_check = -1;
	obj_player.fire = 0;
	obj_player.focus = 0;
	inv_use_script(global.p_active, "change");
}

// Click
if (!global.in_inv)
{
	if (mouse_check_button(mb_left))  inv_use_script(global.p_active, "left");
	if (mouse_check_button(mb_right)) inv_use_script(global.p_active, "right");
	// Reload (Temp)
	if (keyboard_check(global.p_reload))
		with (obj_player) ammo = max_ammo;
}

// Opens full inventory
if keyboard_check_pressed(global.p_inv_open)
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
if (global.in_inv)
{
	
	mousex = device_mouse_x_to_gui(0)
	mousey = device_mouse_y_to_gui(0)
	
	
	
		if mousey >= camera_get_view_height(0) - spr_hotbar_height
		{
			inv_row = 3
		}
		
		if mousey >= camera_get_view_height(0) - spr_hotbar_height*2 and mousey < camera_get_view_height(0) - spr_hotbar_height
		{
			inv_row = 2
		}
		
		if mousey >= camera_get_view_height(0) - spr_hotbar_height*3 and mousey < camera_get_view_height(0) - spr_hotbar_height*2
		{
			inv_row = 1
		}
		
		if mousex >= gui_holder_pos_x + divider_width and mousex < gui_holder_pos_x + divider_width + cell_width
		{
			inv_column = 1
		}
		
		if mousex >= gui_holder_pos_x + divider_width*2 + cell_width and mousex < gui_holder_pos_x + divider_width*2 + cell_width*2
		{
			inv_column = 2 
		}
		
		if mousex >= gui_holder_pos_x + divider_width*3 + cell_width*2 and mousex < gui_holder_pos_x + divider_width*3 + cell_width*3
		{
			inv_column = 3
		}

		if mousex >= gui_holder_pos_x + divider_width*4 + cell_width*3 and mousex < gui_holder_pos_x + divider_width*4 + cell_width*4
		{
			inv_column = 4
		}
		
		if mousex >= gui_holder_pos_x + divider_width*5 + cell_width*4 and mousex < gui_holder_pos_x + divider_width*5 + cell_width*5
		{
			inv_column = 5
		}
	
	/// find selected cell
	
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


	
	
	
	var item = inventory[selected_cell] 
		if (item != item_type.none)
		{
			if(mouse_check_button_pressed(mb_left))
			{
				pickup_item = selected_cell
				in_hand = true
				
				
				
			}	
		}
}