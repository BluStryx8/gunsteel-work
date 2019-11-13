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
		switch (irandom_range(0, 3))
		{
			case 0:
				// Spawn Slimes
				repeat (irandom_range(_min, _max))
				{
					enemy_count += 1;
					switch(choose("green", "green", "yellow", "blue"))
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
			case 1:
				// Slimes Green + Yellow, Bats Black
				repeat (irandom_range(_min, _max))
				{
					enemy_count += 1;
					switch(choose("s_green", "s_green", "s_yellow", "b_black"))
					{
						case "s_green":
							rand_load_enemy(obj_enemy_slime_green);
							break;
						case "s_yellow":
							rand_load_enemy(obj_enemy_slime_yellow);
							break;
						case "b_black":
							rand_load_enemy(obj_enemy_bat_black);
							break;
					}
				}
				break;
			case 2:
				// Slimes Green + Blue, Bats Blue
				repeat (irandom_range(_min, _max))
				{
					enemy_count += 1;
					switch(choose("s_green", "s_green", "s_blue", "b_blue"))
					{
						case "s_green":
							rand_load_enemy(obj_enemy_slime_green);
							break;
						case "s_blue":
							rand_load_enemy(obj_enemy_slime_blue);
							break;
						case "b_blue":
							rand_load_enemy(obj_enemy_bat_blue);
							break;
					}
				}
				break;
			case 3:
				// Bats
				repeat (irandom_range(_min, _max))
				{
					enemy_count += 1;
					switch(choose("s_green", "s_green", "b_black", "b_black", "b_blue", "b_green"))
					{
						case "s_green":
							rand_load_enemy(obj_enemy_slime_green);
							break;
						case "b_black":
							rand_load_enemy(obj_enemy_bat_black);
							break;
						case "b_blue":
							rand_load_enemy(obj_enemy_bat_blue);
							break;
						case "b_green":
							rand_load_enemy(obj_enemy_bat_green);
							break;
					}
				}
				break;
		}
		break;
	case "slime":
		switch (irandom_range(0, 2))
		{
			case 0:
				// All Basic
				repeat (irandom_range(_min, _max))
				{
					enemy_count += 1;
					switch(choose("green", "yellow", "blue"))
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
			case 1:
				// Chonky
				repeat (irandom_range(_min, _max))
				{
					enemy_count += 1;
					switch(choose("green", "blue", "blue", "grey"))
					{
						case "green":
							rand_load_enemy(obj_enemy_slime_green);
							break;
						case "blue":
							rand_load_enemy(obj_enemy_slime_blue);
							break;
						case "grey":
							rand_load_enemy(obj_elite_slime_grey);
							break;
					}
				}
				break;
			case 2:
				// Chance for Bullet Slimes
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
							rand_load_enemy(obj_elite_slime_red);
							break;
					}
				}
				break;
		}
		break;
	case "elite":
		switch (irandom_range(0, 2))
		{
			case 0:
				// Bullets
				repeat (irandom_range(_min, _max))
				{
					enemy_count += 1;
					switch(choose("s_grey", "s_red", "b_red", "b_green"))
					{
						case "s_grey":
							rand_load_enemy(obj_elite_slime_grey);
							break;
						case "s_red":
							rand_load_enemy(obj_elite_slime_red);
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
			case 1:
				// Bats
				repeat (irandom_range(_min, _max))
				{
					enemy_count += 1;
					switch(choose("s_yellow", "b_blue", "b_red", "b_red", "b_green"))
					{
						case "s_yellow":
							rand_load_enemy(obj_enemy_slime_yellow);
							break;
						case "b_blue":
							rand_load_enemy(obj_enemy_bat_blue);
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
			case 2:
				// Slimes
				repeat (irandom_range(_min, _max))
				{
					enemy_count += 1;
					switch(choose("s_yellow", "s_grey", "s_red", "s_red"))
					{
						case "s_yellow":
							rand_load_enemy(obj_enemy_slime_yellow);
							break;
						case "s_grey":
							rand_load_enemy(obj_elite_slime_grey);
							break;
						case "s_red":
							rand_load_enemy(obj_elite_slime_red);
							break;
					}
				}
				break;
		}
		break;
}