/// @description Generate Room
switch (section_id)
{
	case "LR_0":
	case "LR_1":
		load_LR_0(special_id, biome);
		break;
	case "LRB_0":
		load_LRB_0(special_id, biome);
		break;
	case "LRB_1":
		load_LRB_1(special_id, biome);
		break;
	case "LRT_0":
		load_LRT_0(special_id, biome);
		break;
	case "LRT_1":
		load_LRT_1(special_id, biome);
		break;
	case "LRTB_0":
		load_LRTB_0(special_id, biome);
		break;
	case "LRTB_1":
		load_LRTB_1(special_id, biome);
		break;
	case "L_0":
		load_L_0(special_id, biome);
		break;
	case "L_1":
		load_L_1(special_id, biome);
		break;
	case "R_0":
		load_R_0(special_id, biome);
		break;
	case "R_1":
		load_R_1(special_id, biome);
		break;
}

// Enemy waves
var _difficulty = min(3, floor(global.difficulty / 100) - 1);
if (enemy_count > 6 - _difficulty)	// Checks to see if room is an enemy room with enough enemies
{
	wave_count = enemy_count - 1;
	waves = irandom_range(0, floor(enemy_count / 6 - _difficulty));
	enemy_count += waves;
}
if (enemy_count > 0) combat = true;
alpha = 0;
total_waves = waves + 1;