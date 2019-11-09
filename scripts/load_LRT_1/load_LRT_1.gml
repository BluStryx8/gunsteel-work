/// @desc Loads an LRT_1 room
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
				spawn_wave(biome, 6, 10);
				// Scatter outliner crates
				spawn_tile_rect(6, 22, 7, 7, 4, 2, 3, obj_crate);
				spawn_tile_rect(36, 52, 7, 7, 4, 2, 3, obj_crate);
				break;
			case "elite":
				// Loads enemy doors
				load_door(5, 16, "left");
				load_door(53, 16, "right");
				load_door(26, 5, "up");
				spawn_wave(biome, 4, 7);
				break;
			case "crate":
				switch (choose("box", "outline"))
				{
					case "box":
						// Draws a big box in centre and some outliner crates
						spawn_tile_rect(26, 32, 30, 26, 2, 2, 0, obj_crate);
						spawn_tile_rect(6, 22, 7, 7, 4, 2, 3, obj_crate);
						spawn_tile_rect(36, 52, 7, 7, 4, 2, 3, obj_crate);
						break;
					case "outline":
						// Draws only outliner crates	
						spawn_tile_rect(16, 42, 36, 36, 4, 2, 1, obj_crate);
						spawn_tile_rect(6, 22, 7, 7, 4, 2, 2, obj_crate);
						spawn_tile_rect(36, 52, 7, 7, 4, 2, 2, obj_crate);
						break;
				}
				break;
		}
		break;
	case "start":
		show_debug_message("Error: Not a start room!")
		break;
}