/// @description Draw Delay
// Draws itself only after draw_delay is 0
if (draw_delay <= 0) draw_self() else draw_delay -= 1;