/// @desc Loads an LR_3 room
/// @param special Determines special ID to be taken into consideration

var _id    = argument0;
var _biome = argument1;

switch (_id)
{
	case "null":
		switch (_biome)
		{
			case "basic":
			case "slime":
				// Loads enemy doors
				load_door(5, 16, "left");
				load_door(53, 16, "right");
				spawn_wave(_biome, 5, 9);
				// Scatter outliner crates
				spawn_tile_rect(10, 16, 14, 10, 2, 2, 3, obj_crate);
				spawn_tile_rect(10, 16, 30, 26, 2, 2, 3, obj_crate);
				spawn_tile_rect(42, 48, 14, 10, 2, 2, 3, obj_crate);
				spawn_tile_rect(42, 48, 30, 26, 2, 2, 3, obj_crate);
				break;
			case "elite":
				// Loads enemy doors
				load_door(5, 16, "left");
				load_door(53, 16, "right");
				spawn_wave(_biome, 6, 10);
				break;
			case "crate":
				switch (choose("box", "filled", "sides"))
				{
					case "box":
						// Draws a big box and some small boxes
						spawn_tile_rect(24, 34, 22, 18, 2, 2, 0, obj_crate);
						spawn_tile_rect(10, 16, 14, 10, 2, 2, 3, obj_crate);
						spawn_tile_rect(10, 16, 30, 26, 2, 2, 3, obj_crate);
						spawn_tile_rect(42, 48, 14, 10, 2, 2, 3, obj_crate);
						spawn_tile_rect(42, 48, 30, 26, 2, 2, 3, obj_crate);
						break;
					case "filled":
						// Filled small boxes
						spawn_tile_rect(10, 16, 14, 10, 2, 2, 0, obj_crate);
						spawn_tile_rect(10, 16, 30, 26, 2, 2, 0, obj_crate);
						spawn_tile_rect(42, 48, 14, 10, 2, 2, 0, obj_crate);
						spawn_tile_rect(42, 48, 30, 26, 2, 2, 0, obj_crate);
						break;
					case "sides":
						// Partly made small boxes
						spawn_tile_rect(10, 16, 14, 10, 2, 2, 3, obj_crate);
						spawn_tile_rect(10, 16, 30, 26, 2, 2, 3, obj_crate);
						spawn_tile_rect(42, 48, 14, 10, 2, 2, 3, obj_crate);
						spawn_tile_rect(42, 48, 30, 26, 2, 2, 3, obj_crate);
						break;
				}
				break;
			case "chest":
				load_tile(30, 20, obj_chest);
				break;
		}
		break;
	case "start":
		// Sets Spawn
		set_spawn(30, 20);
		break;
	case "end":
		// Sets Exit
		load_tile(30, 20, obj_next_floor);
		break;
}