/// @desc Loads an LR_2 room
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
				spawn_tile_rect(18, 40, 32, 7, 8, 25, 3, obj_crate);
				break;
			case "elite":
				// Loads enemy doors
				load_door(5, 16, "left");
				load_door(53, 16, "right");
				spawn_wave(_biome, 6, 10);
				break;
			case "crate":
				switch (choose("box", "outline"))
				{
					case "box":
						// Draws a big box and some outline crates
						var _spawn = irandom_range(0, 1);
						spawn_tile_rect(24, 34, 23, 17, 2, 2, _spawn, obj_crate);
						spawn_tile_rect(18, 40, 32, 7, 8, 25, 3, obj_crate);
						break;
					case "outline":
						// Draws only outline crates
						spawn_tile_rect(18, 40, 32, 8, 4, 24, 1, obj_crate);
						spawn_tile_rect(20, 38, 30, 11, 6, 19, 2, obj_crate);
						spawn_tile_rect(20, 38, 28, 28, 8, 2, 3, obj_crate);
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