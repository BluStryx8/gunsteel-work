/// @description Decay
// Pause Check
if (global.paused)	// Freezes bullet and exits if paused
{
	speed = 0;
	exit;
}
else speed = spd;	// Returns speed to normal

if (distance_to_object(obj_player) < 16 * spd) homing = false;

if (homing)
{
	var _dir = point_direction(x, y, obj_player.x, obj_player.y);
	if round(_dir) mod 360 == round(direction) mod 360
		direction = _dir;
	else if (_dir - direction < 180 and _dir - direction > 0) or (_dir - direction < -180)
		direction += 1;		// Turn left
	else direction -= 1;	// Turn right
	image_angle = direction;
}

// Decay Check
decay -= 1;
if (decay < 0) image_alpha -= 0.1;			// Begin fading
if (image_alpha <= 0) instance_destroy();	// Destroy itself after fading completely

// Collision
hspd = hspeed;
vspd = vspeed;
speed = 0;

var _destroy = bullet_collision(hspd, vspd);

if (_destroy)
{
	// Collided with wall
	instance_create_layer(x, y, "bullets", obj_enemy_bullet_hit);
	instance_destroy();
}