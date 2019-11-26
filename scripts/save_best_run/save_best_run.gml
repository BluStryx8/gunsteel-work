ini_open("history.ini");
var _score = ini_read_real("best", "score", 0);
if (score > _score)
{
	ini_write_real("best", "score", score);
	ini_write_real("best", "level", global.level);
	ini_write_string("best", "class", global.class);
	ini_write_string("best", "starter", global.starter);
}
ini_close();