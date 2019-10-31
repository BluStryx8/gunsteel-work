/// @desc Loads an LRB_1 room
/// @param special Determines special ID to be taken into consideration

var _id = argument0;

switch (_id)
{
	case "null":
		switch (choose("slime", "slime", "crate"))
		{
			case "slime":
			load_door(5, 16, "left");
			load_door(53, 16, "right");
			load_door(26, 33, "down");
			// Enemies
			repeat (irandom_range(4, 7))
			{
				enemy_count += 1;
				switch(choose("g", "g", "r", "b"))
				{
					case "g":
						rand_load_enemy(obj_enemy_slime_g);
						break;
					case "r":
						rand_load_enemy(obj_enemy_slime_r);
						break;
					case "b":
						rand_load_enemy(obj_enemy_slime_b);
						break;
				}
			}
			var _y = 7;
			for (var _x = 6; _x <= 52; _x += 4)
				if choose(true, false, false, false) load_tile(_x, _y, obj_crate);
			break;
		case "crate":
			var _y = 7;
			for (var _x = 6; _x <= 52; _x += 4)
				if choose(true, true, true, false) load_tile(_x, _y, obj_crate);
			var _y = 14;
			for (var _x = 27; _x <= 31; _x += 2)
				load_tile(_x, _y, obj_crate);
			var _y = 24;
			for (var _x = 27; _x <= 31; _x += 2)
				load_tile(_x, _y, obj_crate);
					
			break;
		}
		break;
	case "start":
		// Sets Spawn
		set_spawn(29, 10);
		break;
}