/// @desc Loads an LRB_2 or LRB_3 room
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
				// Loads Enemy Doors
				load_door(5, 16, "left");
				load_door(53, 16, "right");
				load_door(26, 33, "down");
				spawn_wave(_biome, 6, 10);
				// Scatter outliner crates
				spawn_tile_rect(6, 22, 32, 32, 4, 2, 3, obj_crate);
				spawn_tile_rect(36, 52, 32, 32, 4, 2, 3, obj_crate);
				break;
			case "elite":
				// Loads Enemy Doors
				load_door(5, 16, "left");
				load_door(53, 16, "right");
				load_door(26, 33, "down");
				spawn_wave(_biome, 7, 11);
				break;
			case "crate":
				// Scatter outliner crates
				spawn_tile_rect(6, 22, 32, 32, 4, 2, 3, obj_crate);
				spawn_tile_rect(36, 52, 32, 32, 4, 2, 3, obj_crate);
				spawn_tile_rect(6, 22, 30, 30, 8, 2, 2, obj_crate);
				spawn_tile_rect(36, 52, 30, 30, 8, 2, 2, obj_crate);
				break;
			case "chest":
				load_tile(30, 27, obj_chest);
				break;
			}
			break;
	case "start":
		// Sets Spawn
		set_spawn(30, 27);
		break;
}