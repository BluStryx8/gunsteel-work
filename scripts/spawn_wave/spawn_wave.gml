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
		switch (choose(0, 0))
		{
			case 0:
				// Spawn Slimes
				repeat (irandom_range(_min, _max))
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
}