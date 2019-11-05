/// @description Shoot
// Declare Variables
draw_delay = obj_player.bullet_dd;		// Delays drawing so the bullet is positioned properly
decay = obj_player.decay;				// Sets time before bullet eventually fades and deletes self

speed = obj_player.bullet_speed + irandom_range(-obj_player.bullet_speed_var, obj_player.bullet_speed_var);
spd = speed;							// Saves speed for later

damage = irandom_range(obj_player.min_damage, obj_player.max_damage);
damage -= round((obj_player.accuracy - obj_player.base_accuracy) * obj_player.recoil_mult);

