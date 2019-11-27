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
				spawn_wave(_biome, 6, 10);
				break;
			case "elite":
				// Loads enemy doors
				load_door(5, 16, "left");
				spawn_wave(_biome, 7, 11);
				break;
			case "crate":
				break;
			case "chest":
				load_tile(48, 21, obj_chest);
				break;
		}
		break;
	case "end":
		// Sets Exit
		load_tile(48, 20, obj_next_floor);
		break;
}