/// @description Movement

// Keyboard Movements
if keyboard_check(global.p_left) h_move -= 2;
if keyboard_check(global.p_right) h_move += 2;
if keyboard_check(global.p_up) v_move -= 2;
if keyboard_check(global.p_down) v_move += 2;

// Decrease Speed
if h_move > 0 h_move -= 1
if h_move < 0 h_move += 1
if h_move > move_speed h_move = move_speed
if h_move < -move_speed h_move = -move_speed

if v_move > 0 v_move -= 1
if v_move < 0 v_move += 1
if v_move > move_speed v_move = move_speed
if v_move < -move_speed v_move = -move_speed

while place_meeting(x + h_move, y, obj_filler)
{
	if h_move > 0 h_move -= 1
	if h_move < 0 h_move += 1
}
x += h_move
while place_meeting(x, y + v_move, obj_filler)
{
	if v_move > 0 v_move -= 1
	if v_move < 0 v_move += 1
}
y += v_move

// Camera (Temp)
camera_set_view_pos(view_camera[0], x - h_move - camera_width / 2, y - v_move - camera_height / 2);
if mouse_check_button(mb_right)
{
	if camera_pan > 2 camera_pan -= camera_pan / 2;
}
else if camera_pan < 1024 camera_pan += camera_pan;

if camera_pan < 1024
{
	camera_set_view_pos(view_camera[0],
	((camera_pan - 1) * x / camera_pan + mouse_x / camera_pan) - camera_width / 2,
	((camera_pan - 1) * y / camera_pan + mouse_y / camera_pan) - camera_height / 2);
}