/// @description Movement

// Keyboard Movements

h_move = 0
v_move = 0

if keyboard_check(global.p_left) h_move -= 1;
if keyboard_check(global.p_right) h_move += 1;
if keyboard_check(global.p_up) v_move -= 1;
if keyboard_check(global.p_down) v_move += 1;

hspeed = h_move * move_speed
vspeed = v_move * move_speed