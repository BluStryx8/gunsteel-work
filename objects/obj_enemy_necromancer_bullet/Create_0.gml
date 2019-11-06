/// @description Shoot
// Declare Variables
		// Delays drawing so the bullet is positioned properly
decay = 180			// Sets time before bullet eventually fades and deletes self

speed = 5
spd = speed;							// Saves speed for later

damage = 15
last_hit = noone;

pierce = -1

direction = obj_enemy_necromancer.dir + irandom_range(0,60 );
image_angle = direction;

// Collision
var _hspd = hspeed;
var _vspd = vspeed;
speed = 0;


