/// @description Check Click
if (room == rm_mainmenu)
	{
	switch (image_index)
	{
		case 0:
			// Start
			global.menu_follow = 3
			break;
		case 1:
			// Options
			global.menu_follow = 1
			break;
		case 2:
			// Quit
			game_end();
			break;
		case 3:
			//continue (Fades out them goes to rm_game)
			if (clicked == false)
			{
				load_save();
				instance_create_layer(0,0,"fade",obj_fade_out);
				clicked = true;
			}
			break;
		
		case 4:
		//return to center
			global.menu_follow = 2 
			break;
			
		case 6:
			global.menu_follow = 4
			break;
			
		case 7:
			global.menu_follow = 3
			break;

		case 8:
			//continue (Fades out them goes to rm_game)
			if (clicked == false)
			{
				new_save();
				instance_create_layer(0,0,"fade",obj_fade_out);
				clicked = true;
			}
			break;
	}	
}
else
{
	global.settings = false;
}