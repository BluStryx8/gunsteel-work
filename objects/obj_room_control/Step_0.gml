/// @description Check for wave clear
if (waves == enemy_count and waves > 0)
{
	spawn_wave(biome, waves * 2, wave_count);
	enemy_count -= 1;
	waves -= 1;
	wave_count -= 1;
}
if (combat and enemy_count == 0)
{
	combat = false;
	with (obj_player)
		if (p_defense < p_max_defense) p_defense += 1;
}