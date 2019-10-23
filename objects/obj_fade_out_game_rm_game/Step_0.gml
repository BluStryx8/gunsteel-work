/// @description changes opacity of rectangle
if global.rectangle_opacity_out > 1.01  {
	instance_destroy()
	room_goto(rm_game)
	global.moveable = true
	global.player_setx = 479
	global.player_sety = 516

}
else
{
	global.rectangle_opacity_out = global.rectangle_opacity_out + 0.01
	
}