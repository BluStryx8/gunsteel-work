/// @description adds session time to total time
total_game_time = total_game_time + session_time

ini_open("save_play_time");
ini_write_real("save_play_time", "play_time", total_game_time);
ini_close();