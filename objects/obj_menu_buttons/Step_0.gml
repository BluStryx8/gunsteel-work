/// @description sets size
if global.settings = true and (!room = rm_mainmenu)
{
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if global.settings = false and (!room = rm_mainmenu)
{
	instance_destroy()
}
