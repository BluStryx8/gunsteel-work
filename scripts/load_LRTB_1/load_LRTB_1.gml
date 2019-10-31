/// @desc Loads an LRTB_0 room
/// @param special Determines special ID to be taken into consideration

var _id = argument0;

switch (_id)
{
	case "null":
		switch (choose("enemy", "enemy", "none"))
		{
			case "enemy":
			// Loads enemy doors
			load_door(5, 16, "left");
			load_door(53, 16, "right");
			load_door(26, 5, "up");
			load_door(26, 33, "down");
			switch (choose("slime", "slime"))
			{
				case "slime":
					// Spawn Slimes
					repeat (irandom_range(3, 7))
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
		case "none":
			break;
		}
		break;
	case "start":
		show_debug_message("Error: Not a start room!")
		break;
}