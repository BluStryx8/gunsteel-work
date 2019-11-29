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
				// Spawns a random amount of crates in each section
				var _y1 = 29;
				var _y2 = 25;
				for (var _m = 0; _m < 2; _m++)
				{
					var _x1 = 8;
					var _x2 = 12;
					for (var _n = 0; _n < 3; _n++)
					{
						var _spawn = irandom_range(0, 3);
						spawn_tile_rect(_x1, _x2, _y1, _y2, 2, 2, _spawn, obj_crate);
						_x1 += 14;
						_x2 += 14;
					}
					_y1 -= 16;
					_y2 -= 16;
				}
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