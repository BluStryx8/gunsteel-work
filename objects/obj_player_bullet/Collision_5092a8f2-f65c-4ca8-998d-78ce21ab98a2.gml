/// @description Damage and destroy
instance_create_layer(x, y, "bullets", obj_player_bullet_hit);
with (other)
{
	// Adds to damage when hit
	hp -= obj_player_bullet.damage;
	hurt_flash = 0.75;
	if hp <= 0 instance_destroy();
	// Draw damage
	dmg = instance_create_layer(x, y, "HUD", obj_dmg_number);
	dmg.damage = obj_player_bullet.damage;
}
instance_destroy();