/// @description Fade/Unfade
if (!fade_in)
{
	fade += 0.05;
	if (fade >= 1)
	{
		fade = 1;
		fade_in = true;
	}
}
else
{
	if (mouse_check_button_released(mb_left) and !fade_out)
		fade_out = true;
	if (fade_out)
	{
		fade -= 0.05;
		if (fade <= 0)
		{
			master.clicked = false;
			instance_destroy();
		}
	}
}
if (room != rm_mainmenu and !global.paused)
	instance_destroy();