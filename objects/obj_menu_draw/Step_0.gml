/// @description Sets Camera Position and Fade in
var _camera_target = floor(view_get_wport(0) * (menu_follow - 1));
var _x = camera_get_view_x(view_camera[0]);
var _y = camera_get_view_y(view_camera[0]);
if (_x - (camera_width / menu_speed) < _camera_target)
	and (_x + (camera_width / menu_speed) > _camera_target)
{
	_x = _camera_target;
}
else
{
	if (_x > _camera_target) _x -= camera_width / menu_speed;
	if (_x < _camera_target) _x += camera_width / menu_speed;
}
camera_set_view_pos(view_camera[0], _x, _y);

// Fade
if (fade >= 0)
	fade -= 1 / room_speed;