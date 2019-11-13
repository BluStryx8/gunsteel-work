/// @desc Loads an LRTB_0 room
/// @param special Determines special ID to be taken into consideration

var _id = argument0;

switch (_id)
{
	case "null":
		switch (biome)
		{
			case "basic":
				if choose(true, false) break;
				// Loads enemy doors
				load_door(5, 16, "left");
				load_door(53, 16, "right");
				load_door(26, 5, "up");
				load_door(26, 33, "down");
				spawn_wave(biome, 4, 7);
				break;
			case "slime":
			case "elite":
				// Loads enemy doors
				load_door(5, 16, "left");
				load_door(53, 16, "right");
				load_door(26, 5, "up");
				load_door(26, 33, "down");
				spawn_wave(biome, 5, 5);
				break;
			case "crate":
				break;
		}
		break;
	case "start":
		show_debug_message("Error: Not a start room!")
		break;
}