/// @desc Loads an LRB_2 room
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
				spawn_wave(_biome, 7, 11);
				break;
			case "elite":
				// Loads Enemy Doors
				load_door(5, 16, "left");
				load_door(53, 16, "right");
				load_door(26, 33, "down");
				spawn_wave(_biome, 8, 12);
				break;
			case "crate":	
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