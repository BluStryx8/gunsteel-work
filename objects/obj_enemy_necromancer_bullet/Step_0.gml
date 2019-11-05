/// @description Decay
// Pause Check
if (global.paused)	// Freezes bullet and exits if paused
{
	speed = 0;
	exit;
}
else speed = spd;	// Returns speed to normal

// Decay Check
decay -= 1;
if (decay < 0) image_alpha -= 0.1;			// Begin fading
if (image_alpha <= 0) instance_destroy();	// Destroy itself after fading completely

// Collision
var _hspd = hspeed;
var _vspd = vspeed;
speed = 0;

var _destroy = bullet_collision(_hspd, _vspd);

if (_destroy)
{
	// Collided with wall
	instance_create_layer(x, y, "bullets", obj_player_bullet_hit);
	instance_destroy();
}