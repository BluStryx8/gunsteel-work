/// @description Check for wave clear
if (waves == enemy_count and waves > 0)
{
	spawn_wave("basic", waves * 2, waves * 4);
	waves -= 1;
	enemy_count -= 1;
}