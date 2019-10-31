/// @desc Loads an R_1 room
/// @param special Determines special ID to be taken into consideration

var _id = argument0;

switch (_id)
{
	case "null":
		switch (choose("enemy", "enemy", "crate"))
		{
			case "enemy":
			// Loads enemy doors
			load_door(32, 16, "right");
			switch (choose("slime", "slime"))
			{
				case "slime":
					// Spawn Slimes
					repeat (irandom_range(9, 13))
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
			for (var _x = 5; _x <= 31; _x += 8)
				if choose(true, false, false, false) load_tile(_x, _y, obj_crate);
			var _y = 7;
			for (var _x = 5; _x <= 31; _x += 8)
				if choose(true, false, false, false) load_tile(_x, _y, obj_crate);
			break;
		case "crate":
			switch (choose("box", "outline"))
			{
				case "box":
					// Draws a big box and some outline crates
					for (var _y = 23; _y >= 17; _y -= 2)
						for (var _x = 15; _x <= 21; _x += 2)
							load_tile(_x, _y, obj_crate);
					var _y = 32;
					for (var _x = 5; _x <= 31; _x += 4)
						if choose(true, false, false, false) load_tile(_x, _y, obj_crate);
					var _y = 7;
					for (var _x = 5; _x <= 31; _x += 4)
						if choose(true, false, false, false) load_tile(_x, _y, obj_crate);
					break;
				case "outline":
					// Draws only outline crates
					var _y = 32;
					for (var _x = 6; _x <= 52; _x += 4)
						if choose(true, true, true, false) load_tile(_x, _y, obj_crate);
					var _y = 30;
					for (var _x = 6; _x <= 52; _x += 6)
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
		// Generates centre crate
		load_tile(29, 19, obj_crate);
		break;
}