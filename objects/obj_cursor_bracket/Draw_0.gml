/// @description Draw Self
if (global.paused) exit;
if (obj_player.type == "pistol") or (obj_player.type == "rifle") or (obj_player.type == "shotgun")
{
	draw_self();
}