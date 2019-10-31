/// @desc Loads an L_0 room
/// @param special Determines special ID to be taken into consideration

var _id = argument0;

switch (_id)
{
	case "null":
		switch (choose("enemy", "enemy", "crate"))
		{
			case "enemy":
			// Loads enemy doors
			load_door(5, 16, "left");
			spawn_wave("basic", 9, 15);
			// Scatter outliner crates
			spawn_tile_rect(6, 52, 32, 7, 8, 25, 3, obj_crate);
			break;
		case "crate":
			switch (choose("box", "outline"))
			{
				case "box":
					// Draws a big box and some outline crates
					spawn_tile_rect(24, 34, 23, 17, 2, 2, 0, obj_crate);
					spawn_tile_rect(6, 52, 32, 7, 4, 25, 3, obj_crate);
					break;
				case "outline":
					// Draws only outline crates
					spawn_tile_rect(6, 52, 32, 7, 4, 25, 1, obj_crate);
					spawn_tile_rect(6, 52, 29, 10, 6, 19, 2, obj_crate);
					spawn_tile_rect(6, 52, 26, 13, 8, 13, 3, obj_crate);
					break;
			}
			break;
		}
		break;
	case "start":
		show_debug_message("Error: Not a start room!")
		break;
}