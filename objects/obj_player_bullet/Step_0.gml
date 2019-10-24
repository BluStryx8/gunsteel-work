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
var _destroy_x = bullet_collision("x", hspeed);
var _destroy_y = bullet_collision("y", vspeed);

if (_destroy_x == 1 or _destroy_y == 1)
{
	// Collided with wall
	instance_create_layer(x, y, "bullets", obj_player_bullet_hit);
	instance_destroy();
}