/// @description Cursor
x = mouse_x;
y = mouse_y;

// Change cursor type
if (obj_player.type == "none" or global.paused or global.in_inv)
	image_index = 1 else image_index = 0;