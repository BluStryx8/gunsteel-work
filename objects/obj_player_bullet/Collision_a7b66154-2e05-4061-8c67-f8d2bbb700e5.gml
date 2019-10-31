/// @description Destroys instance
instance_create_layer(x, y, "bullets", obj_player_bullet_hit);
with (other)
{
	// Adds to damage when hit
	total_damage = total_damage + other.damage;
	current_damage = current_damage + other.damage;
	// Draw damage
	dmg = instance_create_layer(x, y, "HUD", obj_dmg_number);
	dmg.damage = other.damage;
}
instance_destroy();