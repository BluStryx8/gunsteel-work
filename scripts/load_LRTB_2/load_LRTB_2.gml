/// @desc Loads an LRTB_2 room
/// @param special Determines special ID to be taken into consideration

var _id    = argument0;
var _biome = argument1;

switch (_id)
{
	case "null":
		switch (_biome)
		{
			case "basic":
				if choose(true, false) break;
				// Loads enemy doors
				load_door(5, 16, "left");
				load_door(53, 16, "right");
				load_door(26, 5, "up");
				load_door(26, 33, "down");
				spawn_wave(_biome, 2, 4);
				break;
			case "slime":
			case "elite":
				// Loads enemy doors
				load_door(5, 16, "left");
				load_door(53, 16, "right");
				load_door(26, 5, "up");
				load_door(26, 33, "down");
				spawn_wave(_biome, 3, 4);
				break;
			case "crate":
				break;
			case "chest":
				load_tile(30, 20, obj_chest);
				break;
		}
		break;
	case "start":
		show_debug_message("Error: Not a start room!")
		break;
}