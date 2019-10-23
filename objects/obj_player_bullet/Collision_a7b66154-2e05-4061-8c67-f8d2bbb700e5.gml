///@description Destroys instnace
instance_create_layer(x, y, "bullets", obj_player_bullet_hit)
with other
{
	/// Adds to damage when hit
	total_damage = total_damage + obj_player_bullet.damage;
	current_damage = current_damage + obj_player_bullet.damage;
	dmg = instance_create_layer(x, y, "HUD", obj_dmg_number);
	dmg.damage = obj_player_bullet.damage;
}
instance_destroy();