/// @desc Spawns a wave
/// @param biome The biome type of enemies to get
/// @param min Minimum amount of enemies to spawn
/// @param max Maximum amount of enemies to spawn

var _biome = argument0;
var _min  = argument1;
var _max  = argument2;

switch (_biome)
{
	case "basic":
		switch (choose(0, 1, 2))
		{
			case 0:
				// Spawn Slimes
				repeat (irandom_range(_min, _max))
				{
					enemy_count += 1;
					switch(choose("green", "green", "yellow", "blue", "red"))
					{
						case "green":
							rand_load_enemy(obj_enemy_slime_green);
							break;
						case "yellow":
							rand_load_enemy(obj_enemy_slime_yellow);
							break;
						case "blue":
							rand_load_enemy(obj_enemy_slime_blue);
							break;
						case "red":
							rand_load_enemy(obj_enemy_slime_red);
							break;
					}
				}
				break;
			case 1:
				// Spawn Slimes and Bats
				repeat (irandom_range(_min, _max))
				{
					enemy_count += 1;
					switch(choose("s_green", "s_green", "s_blue", "b_black", "b_blue"))
					{
						case "s_green":
							rand_load_enemy(obj_enemy_slime_green);
							break;
						case "s_blue":
							rand_load_enemy(obj_enemy_slime_blue);
							break;
						case "b_black":
							rand_load_enemy(obj_enemy_bat_black);
							break;
						case "b_blue":
							rand_load_enemy(obj_enemy_bat_blue);
							break;
					}
				}
				break;
			case 2:
				// Reds
				repeat (irandom_range(_min, _max))
				{
					enemy_count += 1;
					switch(choose("s_green", "s_green", "s_green", "s_yellow", "s_yellow", "s_red", "b_red"))
					{
						case "s_green":
							rand_load_enemy(obj_enemy_slime_green);
							break;
						case "s_yellow":
							rand_load_enemy(obj_enemy_slime_blue);
							break;
						case "s_red":
							rand_load_enemy(obj_enemy_slime_red);
							break;
						case "b_red":
							rand_load_enemy(obj_enemy_bat_red);
							break;
					}
				}
				break;
		}
		break;
	case "slime":
		switch (choose(0, 1, 2))
		{
			case 0:
				// Green, Yellow, Blue, Red
				repeat (irandom_range(_min, _max))
				{
					enemy_count += 1;
					switch(choose("green", "green", "yellow", "blue", "red"))
					{
						case "green":
							rand_load_enemy(obj_enemy_slime_green);
							break;
						case "yellow":
							rand_load_enemy(obj_enemy_slime_yellow);
							break;
						case "blue":
							rand_load_enemy(obj_enemy_slime_blue);
							break;
						case "red":
							rand_load_enemy(obj_enemy_slime_red);
							break;
					}
				}
				break;
			case 1:
				// Green, Blue, Yellow
				repeat (irandom_range(_min, _max))
				{
					enemy_count += 1;
					switch(choose("green", "blue", "blue", "yellow"))
					{
						case "green":
							rand_load_enemy(obj_enemy_slime_green);
							break;
						case "yellow":
							rand_load_enemy(obj_enemy_slime_yellow);
							break;
						case "blue":
							rand_load_enemy(obj_enemy_slime_blue);
							break;
					}
				}
				break;
			case 2:
				// Yellow, Red
				repeat (irandom_range(_min, _max))
				{
					enemy_count += 1;
					switch(choose("green", "green", "yellow", "red"))
					{
						case "green":
							rand_load_enemy(obj_enemy_slime_green);
							break;
						case "yellow":
							rand_load_enemy(obj_enemy_slime_yellow);
							break;
						case "red":
							rand_load_enemy(obj_enemy_slime_red);
							break;
					}
				}
				break;
		}
		break;
	case "elite":
		switch (choose(0, 0))
		{
			case 0:
			// Bullets
			repeat (irandom_range(_min, _max))
			{
				enemy_count += 1;
				switch(choose("s_green", "s_yellow", "s_red", "b_red", "b_green"))
				{
					case "s_green":
						rand_load_enemy(obj_enemy_slime_green);
						break;
					case "s_yellow":
						rand_load_enemy(obj_enemy_slime_yellow);
						break;
					case "s_red":
						rand_load_enemy(obj_enemy_slime_red);
						break;
					case "b_red":
						rand_load_enemy(obj_enemy_bat_red);
						break;
					case "b_green":
						rand_load_enemy(obj_enemy_bat_green);
						break;
				}
			}
			break;
		}
		break;
}