/// @description Decay
// Pause Check
if (global.paused)	// Freezes bullet and exits if paused
{
	speed = 0;
	exit;
}
else speed = spd;	// Returns speed to normal


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
