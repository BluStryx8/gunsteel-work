/// @description Decay
// Pause Check
if (global.paused)	// Freezes bullet and exits if paused
{
	speed = 0;
	exit;
}
else speed = spd;	// Returns speed to normal

// Direction
direction = point_direction(x,y, obj_player.x, obj_player.y)

// Destroy itself after time
time_destroy = time_destroy + 1
if time_destroy >= 180{
	instance_create_layer(x, y, "bullets", obj_player_bullet_hit);
	instance_destroy()	
}


// Collision
hspd = hspeed;
vspd = vspeed;
speed = 0;

var _destroy = bullet_collision(hspd, vspd);

if (_destroy)
{
	// Collided with wall
	instance_create_layer(x, y, "bullets", obj_player_bullet_hit);
	instance_destroy();
}