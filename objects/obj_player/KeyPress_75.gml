/// @description Self Damage
if (immune <= 0 and dodge <= 0) // Checks if not invulnerable
{
	immune = 60;
	if (p_defense > 0) p_defense -= 1;
		else p_health -= 1;
	death_check();
}