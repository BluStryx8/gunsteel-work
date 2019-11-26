ini_open("history.ini");
ini_write_real("dungeon", "score", score);
ini_write_real("dungeon", "level", global.level);
ini_write_string("player", "class", global.class);
ini_write_string("player", "starter", global.starter);
ini_close();
save_best_run();