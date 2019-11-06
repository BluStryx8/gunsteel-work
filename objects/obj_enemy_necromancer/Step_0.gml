/// @description runs stuff

if (global.paused) exit;

dir = direction
if distance_to_object(obj_player) < 100 or chance_agro = 3
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
	if distance_to_point(old_player_x,old_player_y) <= player_location_distance - distance_needing 
	{
		
		if time_attack_1 < 0
		{
	
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
					instance_create_layer(x , y, "bullets",obj_enemy_necromancer_bullet_follow);
					break;
				case "left":
					instance_create_layer(x , y, "bullets",obj_enemy_necromancer_bullet_follow);
					break;
				case "up":
					instance_create_layer(x , y , "bullets",obj_enemy_necromancer_bullet_follow);
					break;
				case "down":
					instance_create_layer(x, y, "bullets",obj_enemy_necromancer_bullet_follow);
					break;
			}
			
			time_attack_1  = attack_1_time
			speed = 1
		}
	}
	else
	{
		time_attack_1 -= 1 
	}
	
	rand_agro = irandom_range(0, chance_agro)  ///randomly gives agro
}
		
if state = 0
{
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	speed = 3
	distance_to_player = point_distance(x,y,obj_player.x, obj_player.y);
	if time < 0
	{
		repeat (10)
		{
				instance_create_layer(x, y , "bullets", obj_enemy_necromancer_bullet)   
		}
		
		time = attack_time
	}
	else
	{
		time -= 1 
	}
}
	
	
	
	
	



