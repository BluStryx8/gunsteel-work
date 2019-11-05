/// @description runs stuff

if (global.paused) exit;

if distance_to_object(obj_player) < 100 or rand_agro = 3
{
	state = 0  ///shotgun (close ranged)
}
else{
	state = 1 ///not shotgun (not close ranged)
}

if state = 1  // creates homing projectile
{
	var old_player_x = obj_player.x
	var old_player_y = obj_player.y
	var player_location_distance = point_distance(x,y,old_player_x,old_player_y);
	distance_needing = irandom_range(min_dist,max_dist);
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	speed = 2 
	if distance_to_point(old_player_x,old_player_y) <= player_location_distance - distance_needing
	{
		speed = 0
	}
		if (direction <= 45 or direction > 315)
			dir = "right";
		else if (direction <= 135 and direction > 45)
			dir = "up";
		else if (direction <= 225 and direction > 135)
			dir = "left";
		else if (direction <= 315 and direction > 225)
			dir = "down";
			
	switch (dir)
	{
		case "right":
			instance_create_layer(x + 15, y, "bullets",obj_enemy_necromancer_bullet);
			break;
		case "left":
			instance_create_layer(x - 15, y, "bullets",obj_enemy_necromancer_bullet);
			break;
		case "up":
			instance_create_layer(x , y - 15, "bullets",obj_enemy_necromancer_bullet);
			break;
		case "down":
			instance_create_layer(x, y+15, "bullets",obj_enemy_necromancer_bullet);
			break
			
	}
	rand_agro = irandom_range(0, chance_agro)  ///randomly gives agro
}
		

	
	
	
	
	



