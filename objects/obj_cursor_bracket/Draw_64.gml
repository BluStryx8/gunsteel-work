/// @description Draw Cursor Proper
if (global.truepause) exit;	// Exits in cutscenes/loading
if (image_index == 0)	// Only middle draws
{
	// Define mouse positions
	mousex = device_mouse_x_to_gui(0)
	mousey = device_mouse_y_to_gui(0)

	if (obj_player.type == "none" or global.paused or global.in_inv) var _index = 1
		else var _index = 0;
	draw_sprite_ext(spr_cursor, _index, mousex, mousey, 2, 2, 0, c_white, 1);
}