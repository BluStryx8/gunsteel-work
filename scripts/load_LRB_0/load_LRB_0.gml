/// @desc Loads an LRB_0 room
/// @param special Determines special ID to be taken into consideration

var _id = argument0;

switch (_id)
{
	case "null":
		switch (choose("enemy", "enemy", "crate"))
		{
			case "enemy":
			// Loads enemy doors
			load_door(5, 16, "left");
			load_door(53, 16, "right");
			load_door(26, 33, "down");
			switch (choose("slime", "slime"))
			{
				case "slime":
					// Spawn Slimes
					repeat (irandom_range(7, 12))
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
					break;
			}
			// Scatter outliner crates
			var _y = 32;
			for (var _x = 6; _x <= 22; _x += 4)
				if choose(true, false, false, false) load_tile(_x, _y, obj_crate);
			for (var _x = 36; _x <= 52; _x += 4)
				if choose(true, false, false, false) load_tile(_x, _y, obj_crate);
			var _y = 7;
			for (var _x = 6; _x <= 52; _x += 4)
				if choose(true, false, false, false) load_tile(_x, _y, obj_crate);
			break;
		case "crate":
			switch (choose("box", "outline"))
			{
				case "box":
					// Draws a big box in centre and some outliner crates
					for (var _y = 23; _y >= 17; _y -= 2)
						for (var _x = 24; _x <= 34; _x += 2)
							load_tile(_x, _y, obj_crate);
					var _y = 32;
					for (var _x = 6; _x <= 22; _x += 4)
						if choose(true, false, false, false) load_tile(_x, _y, obj_crate);
					for (var _x = 36; _x <= 52; _x += 4)
						if choose(true, false, false, false) load_tile(_x, _y, obj_crate);
					var _y = 7;
					for (var _x = 6; _x <= 52; _x += 4)
						if choose(true, false, false, false) load_tile(_x, _y, obj_crate);
					break;
				case "outline":
					// Draws only outliner crates
					var _y = 32;
					for (var _x = 6; _x <= 22; _x += 4)
						if choose(true, false) load_tile(_x, _y, obj_crate);
					for (var _x = 36; _x <= 52; _x += 4)
						if choose(true, false) load_tile(_x, _y, obj_crate);
					var _y = 9;
					for (var _x = 6; _x <= 52; _x += 6)
						if choose(true, false) load_tile(_x, _y, obj_crate);
					var _y = 7;
					for (var _x = 12; _x <= 52; _x += 4)
						if choose(true, true, true, false) load_tile(_x, _y, obj_crate);
					break;
			}
			break;
		}
		break;
	case "start":
		// Sets Spawn
		set_spawn(29, 19);
		break;
}