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
		switch (choose(0, 1))
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
					switch(choose("s_green", "s_green", "s_green", "s_blue", "b_black", "b_blue"))
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
		}
}