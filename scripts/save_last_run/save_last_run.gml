ini_open("history.ini");
ini_write_real("dungeon", "score", score)
ini_write_real("dungeon", "level", global.level)
ini_write_string("player", "class", global.class)
ini_write_string("player", "starter", global.starter)
var _score = ini_read_real("best", "score", 0);
if score > _score
{
	ini_write_real("best", "score", score);
	ini_write_real("best", "level", global.level);
	ini_write_string("best", "class", global.class);
	ini_write_string("best", "starter", global.starter);
}
ini_close();