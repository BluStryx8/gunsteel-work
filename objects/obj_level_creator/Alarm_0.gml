/// @description Load
switch (load_step)
{
	case 0:
		// Initialise
		init_room();
		save_game();
		global.truepause = true;
		obj_player.x = -(obj_player.sprite_width);
		obj_player.y = -(obj_player.sprite_height);
		load_step += 1;
		alarm[0] = 1;
		break;
	case 1:
		// Create Level
		generate_section(current_x, current_y);
		current_x += 1;
		if (current_x >= x_sections)
		{
			current_x = 0;
			current_y += 1;
			if (current_y >= y_sections)
			{
				load_step += 1;
			}
		}
		alarm[0] = 1;
		break;
	case 2:
		// Generate Border
		generate_border();
		load_step += 1;
		alarm[0] = 1;
		break;
	case 3:
		// Clean Up (unloading sections)
		dungen_clean_up();
		load_step += 1;
		alarm[0] = 1;
		break;
	case 4:
		// Correct Camera (temp)
		with (obj_player)
		{
			x = obj_level_creator.start_x;
			y = obj_level_creator.start_y;
		}
		load_step += 1;
		global.truepause = false;
		global.paused = false;
		global.moveable = true;
		start = true;
		loading = 0;
		break;
}