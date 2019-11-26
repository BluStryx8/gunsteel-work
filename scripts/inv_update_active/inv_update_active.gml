///@desc Updates the active item in inventory
///@param active The active item to switch to
var _active = argument0;

change_check				= _active;
obj_player.fire				= 0;
obj_player.focus			= 0;
obj_player.reloading		= 0;
obj_player.wind				= 0;
obj_cursor_bracket.rotate	= 0;
inv_use_script(global.p_active, "change");