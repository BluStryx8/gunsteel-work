/// @desc Loads an LRT_3 room
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
				spawn_wave(_biome, 5, 9);
				break;
			case "elite":
				// Loads enemy doors
				load_door(5, 16, "left");
				load_door(53, 16, "right");
				load_door(26, 5, "up");
				spawn_wave(_biome, 6, 10);
				break;
			case "crate":
				// Draws two boxes to the sides
				spawn_tile_rect(10, 18, 28, 20, 2, 2, 0, obj_crate);
				spawn_tile_rect(40, 48, 28, 20, 2, 2, 0, obj_crate);
				break;
			case "chest":
				load_tile(30, 12, obj_chest);
				break;
		}
		break;
	case "end":
		load_tile(30, 18, obj_next_floor);
		break;
}