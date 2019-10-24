/// @description Cursor
// Go to player
x = obj_player.x;
y = obj_player.y;
dir = obj_player.dir;

// Offset
if (obj_player.hands == 2)
{
	// Two hand alignment
	if (dir <= 90 or dir >= 270) x += obj_player.offset[0] else x -= obj_player.offset[0];
	y += obj_player.offset[1];
}
else if (obj_player.hands == 1)
{
	// One hand alignment
	x += obj_player.offset[0];
	if not (dir <= 90 or dir >= 270) x += obj_player.offset[2];
	y += obj_player.offset[1];
}

// Rotation
direction = dir;
if (image_index == 1) direction += obj_player.accuracy		// Left bracket
else if image_index == 2 direction -= obj_player.accuracy;	// Right bracket
image_angle = direction;
speed = point_distance(x, y, mouse_x, mouse_y);