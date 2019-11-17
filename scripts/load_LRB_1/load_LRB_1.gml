/// @desc Loads an LRB_1 room
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
				spawn_wave(_biome, 5, 7);
				// Spawns outliner crates
				spawn_tile_rect(6, 52, 7, 7, 8, 2, 3, obj_crate);
				break;
			case "elite":
				// Loads Enemy Doors
				load_door(5, 16, "left");
				load_door(53, 16, "right");
				load_door(26, 33, "down");
				spawn_wave(_biome, 6, 8);
				break;
			case "crate":
				// Draws some boxes on top and in mid
				spawn_tile_rect(6, 52, 7, 7, 4, 2, 1, obj_crate);
				spawn_tile_rect(27, 31, 24, 14, 2, 10, 1, obj_crate);	
				break;
			case "chest":
				load_tile(30, 26, obj_chest);
				break;
			}
			break;
	case "start":
		// Sets Spawn
		set_spawn(30, 26);
		break;
}