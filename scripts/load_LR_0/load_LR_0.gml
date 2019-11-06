/// @desc Loads an LR_0 or LR_1 room
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
			load_door(53, 16, "right");
			biome = choose("basic", "basic", "slime", "elite");
			if (biome != "elite") spawn_wave(biome, 7, 12)
				else spawn_wave(biome, 4, 8);
			// Scatter outliner crates
			spawn_tile_rect(6, 52, 32, 7, 8, 25, 3, obj_crate);
			break;
		case "crate":
			switch (choose("box", "outline"))
			{
				case "box":
					// Draws a big box and some outline crates
					spawn_tile_rect(24, 34, 23, 17, 2, 2, 0, obj_crate);
					spawn_tile_rect(6, 52, 32, 7, 8, 25, 3, obj_crate);
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
		// Sets Spawn
		set_spawn(30, 21);
		break;
}