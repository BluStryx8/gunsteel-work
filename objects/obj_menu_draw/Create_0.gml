/// @description Create Buttons
/// Middle page (main menu)
start = instance_create_layer(room_width / 2, 6 * room_height / 10, "buttons", obj_menu_buttons);
start.image_index = 0
options = instance_create_layer(room_width / 2, 7 * room_height / 10, "buttons", obj_menu_buttons);
options.image_index = 1
quit = instance_create_layer(room_width / 2, 8 * room_height / 10, "buttons", obj_menu_buttons);
quit.image_index = 2


//Left page (settings page)








//Right page (continue game page)
//continue button
continue_ = instance_create_layer(room_width /6 *5, 200, "buttons", obj_menu_buttons);
continue_.image_index = 3