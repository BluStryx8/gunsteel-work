/// @description Knockback
var _attacker = other;
if (other.image_alpha < 1) exit;
with (obj_player)
	if (immune <= 0 and dodge <= 0) // Checks if not invulnerable
	{
		immune = 60;
		h_move = clamp((-h_move) + round(_attacker.hspd), -move_speed, move_speed);
		v_move = clamp((-v_move) + round(_attacker.vspd), -move_speed, move_speed);
	}
with (other)
{
	instance_create_layer(x, y, "bullets", obj_enemy_bullet_hit);
	instance_destroy(_attacker);
}