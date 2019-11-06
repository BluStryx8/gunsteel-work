/// @desc Loads an LRTB_0 room
/// @param special Determines special ID to be taken into consideration

var _id = argument0;

switch (_id)
{
	case "null":
		switch (choose("enemy", "none", "none"))
		{
			case "enemy":
			// Loads enemy doors
			load_door(5, 16, "left");
			load_door(53, 16, "right");
			load_door(26, 5, "up");
			load_door(26, 33, "down");
			biome = choose("basic", "basic");
			spawn_wave(biome, 3, 7)
			break;
		case "none":
			break;
		}
		break;
	case "start":
		show_debug_message("Error: Not a start room!")
		break;
}