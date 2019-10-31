/// @description Damage and destroy
if !other.master_id.active exit;
instance_create_layer(x, y, "bullets", obj_player_bullet_hit);
with (other)
{
	// Adds to damage when hit
	hp -= other.damage;
	hurt_flash = 0.75;
	if hp <= 0
	{
		instance_destroy();
		master_id.enemy_count -= 1;
	}
	// Draw damage
	dmg = instance_create_layer(x, y, "HUD", obj_dmg_number);
	dmg.damage = other.damage;
}
instance_destroy();