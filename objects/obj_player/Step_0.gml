/// @description Movement
// Reset Variables
fire = 0;

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

// Horizontal Colision
var _bbox_side;

if h_move > 0 _bbox_side = bbox_right else _bbox_side = bbox_left;
if (tilemap_get_at_pixel(global.tilemap, _bbox_side + h_move, bbox_top) != 0) ||
	(tilemap_get_at_pixel(global.tilemap, _bbox_side + h_move, bbox_bottom) != 0 )
{
	if h_move > 0 x = x - (x mod 32) + 31 - (bbox_right - x);
	else x = x - (x mod 32) - (bbox_left - x);
	h_move = 0;
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

// Vertical Colision
if v_move > 0 _bbox_side = bbox_bottom else _bbox_side = bbox_top;
if (tilemap_get_at_pixel(global.tilemap, bbox_left, _bbox_side + v_move) != 0) ||
	(tilemap_get_at_pixel(global.tilemap, bbox_right, _bbox_side + v_move) != 0 )
{
	if v_move > 0 y = y - (y mod 32) + 31 - (bbox_bottom - y);
	else y = y - (y mod 32) - (bbox_top - y);
	v_move = 0;
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

// Attack Cooldown
if fire_cooldown > 0 fire_cooldown -= 1;
if fire_cooldown <= 0
{
	fire_cooldown = 0;
	if accuracy > base_accuracy accuracy -= 0.1;
}

// Shake
if shake > 0
{
	shake -= 1;
	shake_x = irandom_range(-shake, shake);
	shake_y = irandom_range(-shake, shake);
}
else
{
	shake_x = 0
	shake_y = 0
}

// Camera (Temp)
camera_set_view_pos(view_camera[0], x - h_move - camera_width / 2 + shake_x, y - v_move - camera_height / 2 + shake_y);
if mouse_check_button(mb_right)
{
	if camera_pan > 2 camera_pan -= camera_pan / 2;
}
else if camera_pan < 1024 camera_pan += camera_pan;

if camera_pan < 1024
{
	camera_set_view_pos(view_camera[0],
	((camera_pan - 1) * x / camera_pan + mouse_x / camera_pan) - camera_width / 2 + shake_x,
	((camera_pan - 1) * y / camera_pan + mouse_y / camera_pan) - camera_height / 2 + shake_y);
}