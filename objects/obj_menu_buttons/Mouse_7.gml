/// @description Check Click
if (room == rm_mainmenu and variable_instance_exists(id, "master"))
{
	if (!master.clicked and master.fade <= 0)
	{
		switch (image_index)
		{
			case 0:
				// Start: Go to Continue Screen
				master.menu_follow = 3;
				break;
			case 1:
				// Options: Go to Options Screen
				master.menu_follow = 1;
				break;
			case 2:
				// Quit: Exit the game
				game_end();
				break;
			case 3:
				// Continue: Fades out them goes to game
				load_save();
				instance_create_layer(0, 0, "fade", obj_fade_out_dungeon);
				master.clicked = true;
				break;
			case 4:
				// (Continue) Back: Return to Mainscreen
				master.menu_follow = 2;
				break;
			case 6:
				// New Game: Go to Newgame Screen
				master.menu_follow = 4;
				break;
			case 7:
				// (New Game) Back: Return to Continue Screen
				master.menu_follow = 3;
				break;

			case 8:
				// New Game: Fades out them goes to game
				new_save();
				instance_create_layer(0, 0, "fade", obj_fade_out_dungeon);
				master.clicked = true;
				break;
			case 9:
				// Controls: Shows Controls
				var _control = instance_create_layer(0, 0, "HUD", obj_keyboard_help);
				_control.master = master;
				master.clicked = true;
				break;
		}
	}
}
else
{
	if (image_index == 4) global.settings = false;
}