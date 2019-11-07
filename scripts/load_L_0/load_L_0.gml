/// @desc Loads an L_0 room
/// @param special Determines special ID to be taken into consideration

var _id = argument0;

switch (_id)
{
	case "null":
		switch (biome)
		{
			case "basic":
			case "slime":
				// Loads enemy doors
				load_door(5, 16, "left");
				spawn_wave(biome, 9, 15);
				// Scatter outliner crates
				spawn_tile_rect(6, 52, 32, 7, 8, 25, 3, obj_crate);
				break;
			case "elite":
				// Loads enemy doors
				load_door(5, 16, "left");
				spawn_wave(biome, 6, 10);
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
						spawn_tile_rect(6, 52, 30, 10, 6, 20, 2, obj_crate);
						spawn_tile_rect(6, 52, 28, 28, 8, 2, 3, obj_crate);
						break;
				}
				break;
		}
		break;
	case "start":
		show_debug_message("Error: Not a start room!")
		break;
}