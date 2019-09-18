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

// Collision for x
while place_meeting(x + h_move, y, obj_filler)
{
	if h_move > 0 h_move -= 1
	if h_move < 0 h_move += 1
}
x += h_move

// Animation for x
var _dir = point_direction(x, y, mouse_x, mouse_y)
if _dir <= 90 or _dir >= 270
{
	anim += h_move
}
else
{
	anim -= h_move
}

// Collision for y
while place_meeting(x, y + v_move, obj_filler)
{
	if v_move > 0 v_move -= 1
	if v_move < 0 v_move += 1
}
y += v_move

// Animation for y
if anim >= 0
{
	anim += abs(v_move)
}
else
{
	anim -= abs(v_move)
}

// If not moving
if h_move == 0 and v_move == 0
{
	anim_x = 0;
	anim_y = 0;
	anim = 0;
	anim_frame = 0;
	frame = 0;
	still = 1;
}

// If moved far enough
if anim >= 5
{
	anim = 0
	if anim_frame < 0 anim_frame = room_speed / 6; // Force animation
	anim_frame += 1;
}
if anim <= -5
{
	anim = 0
	if anim_frame > 0 anim_frame = -(room_speed / 6); // Force animation
	anim_frame -= 1;
}

// Frametime
if anim_frame > room_speed / 6 or (still = 1 and anim_frame > 0)
{
	anim_frame = 0;
	frame += 1;
	still = 0;
}
if anim_frame < -(room_speed / 6) or (still = 1 and anim_frame < 0)
{
	anim_frame = 0;
	frame -= 1;
	if frame <= 0 frame = 4;
	still = 0;
}

// Animation
switch(frame)
{
	case 0:
	if still == 0
	{
		frame = 4;
		anim_x = 0;
		anim_y = 0;
	}
	break;
	
	case 1:
	anim_x = 0;
	anim_y = -1;
	break;
	
	case 2:
	anim_x = 1;
	anim_y = -1;
	break;
	
	case 3:
	anim_x = 1;
	anim_y = 0;
	break;
	
	case 4:
	anim_x = 0;
	anim_y = 0;
	break;
	
	case 5:
	frame = 1;
	anim_x = 0;
	anim_y = -1;
	break;
}

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