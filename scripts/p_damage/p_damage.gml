/// @desc Checks if the player is damaged
/// @param attacker The id of the attacker
var _attacker = argument0;
if (immune <= 0 and dodge <= 0) // Checks if not invulnerable
{
	immune = 60;
	h_move = clamp((-h_move) + round(_attacker.hspd), -move_speed, move_speed);
	v_move = clamp((-v_move) + round(_attacker.vspd), -move_speed, move_speed);
	if (p_defense > 0) p_defense -= 1;
		else p_health -= 1;
}