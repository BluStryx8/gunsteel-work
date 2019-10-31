/// @description Destroys instance
if (other.id == last_hit) exit;

instance_create_layer(x, y, "bullets", obj_player_bullet_hit);
last_hit = other.id;
with (other)
{
	// Adds to damage when hit
	total_damage = total_damage + other.damage;
	current_damage = current_damage + other.damage;
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