/// @description Set session time back to 0
session_time = 0

//opens ini

ini_open("save_play_time")
total_game_time = ini_read_real("save_play_time", "play_time", 0);
ini_close();