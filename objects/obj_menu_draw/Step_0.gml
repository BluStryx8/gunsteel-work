/// @description Sets Camera Position

var _camera_target = floor(view_get_wport(0) * (global.menu_follow - 1));
var _x = camera_get_view_x(view_camera[0]);
var _y = camera_get_view_y(view_camera[0]);
if _x > _camera_target _x -= camera_width / 60;
if _x < _camera_target _x += camera_width / 60;
camera_set_view_pos(view_camera[0], _x, _y);