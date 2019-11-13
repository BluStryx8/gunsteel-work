/// @description Check Click
switch image_index
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
		instance_create_layer(0,0,"fade",obj_fade_out);
		clicked = true;
	
}