/// @desc Loads an LRT_2 room
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
				load_door(26, 5, "up");
				spawn_wave(_biome, 6, 10);
				break;
			case "elite":
				// Loads enemy doors
				load_door(5, 16, "left");
				load_door(53, 16, "right");
				load_door(26, 5, "up");
				spawn_wave(_biome, 7, 11);
				break;
			case "crate":
				// Draws a big box in centre and some outliner crates
				spawn_tile_rect(26, 32, 30, 26, 2, 2, 0, obj_crate);
				break;
			case "chest":
				load_tile(30, 15, obj_chest);
				break;
		}
		break;
	case "end":
		load_tile(30, 15, obj_next_floor);
		break;
}