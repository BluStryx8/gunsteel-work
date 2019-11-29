/// @desc Loads an LRTB_0 or LRTB_3 room
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
				load_door(26, 33, "down");
				spawn_wave(_biome, 8, 12);
				// Scatter outliner crates
				spawn_tile_rect(6, 22, 32, 7, 4, 25, 3, obj_crate);
				spawn_tile_rect(36, 52, 32, 7, 4, 25, 3, obj_crate);
				break;
			case "elite":
				// Loads enemy doors
				load_door(5, 16, "left");
				load_door(53, 16, "right");
				load_door(26, 5, "up");
				load_door(26, 33, "down");
				spawn_wave(_biome, 9, 13);
				break;
			case "crate":
				switch (choose("box", "outline"))
				{
					case "box":
						// Draws a big box in centre and some outliner crates
						var _spawn = irandom_range(0, 1);
						spawn_tile_rect(24, 34, 23, 17, 2, 2, _spawn, obj_crate);
						spawn_tile_rect(6, 22, 32, 7, 4, 25, 3, obj_crate);
						spawn_tile_rect(36, 52, 32, 7, 4, 25, 3, obj_crate);
						break;
					case "outline":
						// Draws only outliner crates			
						spawn_tile_rect(6, 22, 32, 7, 4, 25, 1, obj_crate);
						spawn_tile_rect(36, 52, 32, 7, 4, 25, 1, obj_crate);
						spawn_tile_rect(6, 22, 30, 10, 6, 20, 2, obj_crate);
						spawn_tile_rect(36, 52, 30, 10, 6, 20, 2, obj_crate);
						break;
				}
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