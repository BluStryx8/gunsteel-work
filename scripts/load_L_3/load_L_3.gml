/// @desc Loads an L_3 room
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
				// Spawns a big crate at the centre
				var _spawn = irandom_range(0, 1);
				spawn_tile_rect(24, 34, 23, 17, 2, 2, _spawn, obj_crate);
				break;
			case "chest":
				load_tile(30, 21, obj_chest);
				break;
		}
		break;
	case "end":
		// Sets Exit
		load_tile(30, 20, obj_next_floor);
		break;
}