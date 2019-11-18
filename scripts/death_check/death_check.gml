with (obj_player)
{
	if (p_health <= 0)
	{
		global.death = true;
		global.in_inv = false;
		sneak = false;
		immune = 21;
		delete_save();
		instance_destroy(obj_player_held);
		instance_create_layer(x, y, "player", obj_player_death);
	}
}