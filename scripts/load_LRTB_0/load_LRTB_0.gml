/// @desc Loads an LRTB_0 room
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
				load_door(53, 16, "right");
				load_door(26, 5, "up");
				load_door(26, 33, "down");
				spawn_wave(biome, 9, 14);
				// Scatter outliner crates
				spawn_tile_rect(6, 22, 32, 7, 4, 25, 3, obj_crate);
				spawn_tile_rect(36, 52, 32, 7, 4, 25, 3, obj_crate);
				break;
			case "elite":
				// Loads enemy doors
				load_door(5, 16, "left");
				load_door(53, 16, "right");
				load_door(26, 5, "up");
				load_door(26, 33, "down");
				spawn_wave(biome, 7, 10);
				break;
			case "crate":
				switch (choose("box", "outline"))
				{
					case "box":
						// Draws a big box in centre and some outliner crates
						spawn_tile_rect(24, 34, 23, 17, 2, 2, 0, obj_crate);
						spawn_tile_rect(6, 22, 32, 7, 4, 25, 3, obj_crate);
						spawn_tile_rect(36, 52, 32, 7, 4, 25, 3, obj_crate);
						break;
					case "outline":
						// Draws only outliner crates			
						spawn_tile_rect(6, 22, 32, 7, 4, 25, 1, obj_crate);
						spawn_tile_rect(36, 52, 32, 7, 4, 25, 1, obj_crate);
						spawn_tile_rect(6, 22, 30, 10, 6, 20, 2, obj_crate);
						spawn_tile_rect(36, 52, 30, 10, 6, 20, 2, obj_crate);
						break;
				}
				break;
		}
		break;
	case "start":
		show_debug_message("Error: Not a start room!")
		break;
}