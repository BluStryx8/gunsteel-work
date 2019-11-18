/// @desc Loads an L_2 room
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
				spawn_wave(_biome, 7, 11);
				break;
			case "elite":
				// Loads enemy doors
				load_door(5, 16, "left");
				spawn_wave(_biome, 8, 12);
				break;
			case "crate":
				spawn_tile_rect(37, 43, 23, 17, 2, 2, 0, obj_crate);
				break;
			case "chest":
				load_tile(30, 20, obj_chest);
				break;
		}
		break;
	case "end":
		// Sets Exit
		load_tile(30, 20, obj_next_floor);
		break;
}