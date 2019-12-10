/// @description Generate Room
switch (section_id)
{
	case "LR_0":
	case "LR_1":
		load_LR_0_1(special_id, biome);
		break;
	case "LR_2":
		load_LR_2(special_id, biome);
		break;
	case "LR_3":
		load_LR_3(special_id, biome);
		break;
	case "LRB_0":
		load_LRB_0(special_id, biome);
		break;
	case "LRB_1":
		load_LRB_1(special_id, biome);
		break;
	case "LRB_2":
	case "LRB_3":
		load_LRB_2_3(special_id, biome);
		break;
	case "LRT_0":
	case "LRT_2":
		load_LRT_0_2(special_id, biome);
		break;
	case "LRT_1":
		load_LRT_1(special_id, biome);
		break;
	case "LRT_3":
		load_LRT_3(special_id, biome);
		break;
	case "LRTB_0":
	case "LRTB_3":
		load_LRTB_0_3(special_id, biome);
		break;
	case "LRTB_1":
		load_LRTB_1(special_id, biome);
		break;
	case "LRTB_2":
		load_LRTB_2(special_id, biome);
		break;
	case "L_0":
		load_L_0(special_id, biome);
		break;
	case "L_1":
		load_L_1(special_id, biome);
		break;
	case "L_2":
		load_L_2(special_id, biome);
		break;
	case "L_3":
		load_L_3(special_id, biome);
		break;
	case "R_0":
		load_R_0(special_id, biome);
		break;
	case "R_1":
		load_R_1(special_id, biome);
		break;
	case "R_2":
		load_R_2(special_id, biome);
		break;
	case "R_3":
		load_R_3(special_id, biome);
		break;
}
ammo_rifle_grant   = irandom_range(1, 4);
ammo_sniper_grant  = irandom_range(1, 4);
ammo_shotgun_grant = irandom_range(1, 4);

// Enemy waves
var _difficulty = min(3, floor(global.difficulty / 100) - 1);
if (enemy_count > 6 - _difficulty)	// Checks to see if room is an enemy room with enough enemies
{
	wave_count = enemy_count - 1;
	waves = irandom_range(0, floor(enemy_count / 6 - _difficulty));
	enemy_count += waves;
}
if (enemy_count > 0) combat = true;
total_waves = waves + 1;