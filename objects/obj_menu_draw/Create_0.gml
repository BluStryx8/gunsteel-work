/// @description Create Buttons
/// Middle page (main menu)
start = instance_create_layer(room_width / 4 + 512, 6 * room_height / 10, "buttons", obj_menu_buttons);
start.image_index = 0
options = instance_create_layer(room_width / 4 + 512, 7 * room_height / 10, "buttons", obj_menu_buttons);
options.image_index = 1
quit = instance_create_layer(room_width / 4 + 512, 8 * room_height / 10, "buttons", obj_menu_buttons);
quit.image_index = 2



//Left page (settings page)
back = instance_create_layer(room_width/4 - 100, room_height/10 * 9, "buttons", obj_menu_buttons);
back.image_index = 4
sound = instance_create_layer(room_width/4 - 512, room_height/10 * 3, "buttons", obj_menu_buttons)
sound.image_index = 5






//Right page (continue game page)
//continue button
continue_ = instance_create_layer(room_width /2+ 512, 200, "buttons", obj_menu_buttons);
continue_.image_index = 3
back_cont = instance_create_layer(room_width/2 + 100,room_height/10 * 9 ,"buttons", obj_menu_buttons);
back_cont.image_index = 4

//character
character = instance_create_layer(room_width/2 + 225, 525, "buttons", obj_menu_buttons);
character.image_index = 6


//back in character
back_char = instance_create_layer(room_width - 850,room_height/10 * 9,"buttons",obj_menu_buttons)
back_char.image_index = 7

