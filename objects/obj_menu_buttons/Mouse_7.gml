/// @description Check Click
switch image_index
{
	case 0:
		// Start
		room_goto(rm_game);
		break;
	case 1:
		// Options
		break;
	case 2:
		// Quit
		game_end();
		break;
}