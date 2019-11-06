/// @desc Loads an L_1 room
/// @param special Determines special ID to be taken into consideration

var _id = argument0;

switch (_id)
{
	case "null":
		switch (choose("enemy", "enemy", "crate"))
		{
			case "enemy":
			// Loads enemy doors
			load_door(26, 16, "left");
			biome = choose("basic", "basic", "slime", "elite");
			if (biome != "elite") spawn_wave(biome, 5, 9)
				else spawn_wave(biome, 2, 6);
			// Scatter outliner crates
			spawn_tile_rect(27, 53, 32, 7, 8, 25, 3, obj_crate);
			break;
		case "crate":
			switch (choose("box", "outline"))
			{
				case "box":
					// Draws a big box and some outline crates
					spawn_tile_rect(37, 43, 23, 17, 2, 2, 0, obj_crate);
					spawn_tile_rect(27, 53, 32, 7, 8, 25, 3, obj_crate);
					break;
				case "outline":
					// Draws only outline crates
					spawn_tile_rect(27, 53, 32, 7, 4, 25, 1, obj_crate);
					spawn_tile_rect(27, 53, 30, 10, 6, 20, 2, obj_crate);
					spawn_tile_rect(27, 53, 28, 28, 8, 2, 3, obj_crate);
					break;
			}
			break;
		}
		break;
	case "start":
		show_debug_message("Error: Not a start room!")
		break;
}