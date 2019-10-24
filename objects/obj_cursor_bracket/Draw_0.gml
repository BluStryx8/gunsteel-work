/// @description Draw Self
speed = 0;
if (global.paused or global.in_inv) exit;	// Exits if paused or in an inventory menu
if (obj_player.type == "pistol") or (obj_player.type == "rifle") or (obj_player.type == "shotgun")
	draw_self();	// Draw self if holding a weapon