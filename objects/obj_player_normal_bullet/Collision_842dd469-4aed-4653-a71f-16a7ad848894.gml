/// @description Damage and destroy
if (variable_instance_exists(other.id, "master_id")) var _master = true
	else var _master = false;
if (_master)
	if (!other.master_id.active or other.id == last_hit) exit;

instance_create_layer(x, y, "bullets", obj_player_bullet_hit);
last_hit = other.id;
with (other)
{
	// Adds to damage when hit
	hp -= other.damage;
	hurt_flash = 0.75;
	if hp <= 0
	{
		var _death = instance_create_layer(x, y, "enemies", obj_enemy_death);
		var _scale_mod = irandom_range(-10, 10) / 100;
		_death.image_xscale = scale + _scale_mod;
		_death.image_yscale = scale + _scale_mod;
		_death.image_alpha = irandom_range(80, 100) / 100;
		instance_destroy();
		if (_master) master_id.enemy_count -= 1;
	}
	// Draw damage
	dmg = instance_create_layer(x, y, "HUD", obj_dmg_number);
	dmg.damage = other.damage;
}
if (pierce != -1)
{
	damage -= pierce;
	if (damage <= 0) instance_destroy();
}
else instance_destroy();