/// @description Check for wave clear
if (waves == enemy_count and waves > 0)
{
	spawn_wave("basic", waves * 2, wave_count);
	enemy_count -= 1;
	waves -= 1;
	wave_count -= 1;
}