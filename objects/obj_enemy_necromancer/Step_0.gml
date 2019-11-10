/// @description runs stuff

if (global.paused) exit;

	if distance_to_object(obj_player) < 125 and distance_to_object(obj_player) >= 50
	{
		state = 1 /// no homing
	}
	else if distance_to_object(obj_player) < 50
	{
		state = 2
	}
	else
	{
		state = 0
	}
	
	if state = 0
	{
		speed = 1
		if move_timer < 0
		{
			if (direction <= 45 or direction > 315)
			{
				dir = "right";
				direction = irandom_range(46, 316)
			}
			else if (direction <= 135 and direction > 45)
			{
				dir = "up";
				direction = (irandom_range(136, 405)) mod 360
			}
			else if (direction <= 225 and direction > 135)
			{
				dir = "left";
				direction = (irandom_range(226, 495)) mod 360
			}
			else if (direction <= 315 and direction > 225)
			{
				dir = "down";
				direction = (irandom_range(316, 585)) mod 360
			}
			
			instance_create_layer(x,y,"bullets",obj_enemy_necromancer_bullet)
			
			move_timer = 140
		}
		else 
		{
			move_timer = move_timer - 1
		}
	}
	
if state = 1 
{
	speed = 0.75
	direction = point_direction(x,y,obj_player.x,obj_player.y);
	if attack_timer_1 < 0
	{
		enemy_spawn_bullet_pattern("spread", 8, 0, 10, 2.5, 240, scale - 0.1, scale + 0.1);
		attack_timer_1 = 120
	}
	else
	{
		attack_timer_1 = attack_timer_1 - 1 
	}
	
}
	
if state = 2
{
	speed = 0
	if attack_timer_2 < 0 
	{
		enemy_spawn_bullet_pattern("spread", 8, 0, 10, 2.5, 240, scale - 0.1, scale + 0.1);
		attack_timer_2 = 60
	}
	else
	{
		attack_timer_2 = attack_timer_2 - 1
	}
}
		

	
hspd = hspeed
vspd = vspeed
	
hspd = collision("x", hspd, 5 );
vspd = collision("y", vspd, 5 );



