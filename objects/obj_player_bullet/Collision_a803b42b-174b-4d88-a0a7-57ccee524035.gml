/// @description Damage and destroy
instance_create_layer(x, y, "bullets", obj_player_bullet_hit);
with (other)
{
	// Adds to damage when hit
	crate_hp -= obj_player_bullet.damage;
	if crate_hp <= 0 instance_destroy();
	// Draw damage
	dmg = instance_create_layer(x, y, "HUD", obj_dmg_number);
	dmg.damage = obj_player_bullet.damage;
}
instance_destroy();