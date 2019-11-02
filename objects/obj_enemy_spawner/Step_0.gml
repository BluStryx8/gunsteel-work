/// @description Check if time to spawn
if (image_index >= 11 and spawn != noone)
{
	var _enemy = instance_create_layer(x, y, "enemies", spawn);
	_enemy.master_id = master_id;
	spawn = noone;
	
}