/// @description Increase Anim
if (global.paused) exit;
x += x_move;
if anim_y < 7 anim_y += 0.2
else
{
	x_move = 0;
	if fade > 0 fade -= 0.1 else instance_destroy();
}