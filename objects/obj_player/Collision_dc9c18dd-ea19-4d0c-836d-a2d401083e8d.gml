/// @description Knockback
var _attacker = other;
if (other.image_alpha < 1) exit;
p_damage(_attacker);
with (other)
{
	instance_create_layer(x, y, "bullets", obj_enemy_bullet_hit);
	instance_destroy(_attacker);
}