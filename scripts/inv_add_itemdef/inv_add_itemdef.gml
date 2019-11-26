/// @description Add item definition to item_definitions array
/// @param type Type of Item Enum
/// @param sprite_gui Index of sprite to show in GUI
/// @param sprite_held Index of sprite to show in hand
/// @param drop_item The corresponding dropped item
/// @param name Name of item
/// @param amount Amount of item
/// @param type Type of item
/// @param set Use script when selected
/// @param use_left Use script of item for left click
/// @param use_right Use script of item for right click
/// @param tooltip The tooltip of the item
/// @param tip_lines The lines in the tooltip

// Bind arguments to temp variables for easier reference
var _type_of_item = argument0;
var _sprite_gui   = argument1;
var _sprite_held  = argument2;
var _drop_item	  = argument3;
var _name         = argument4;
var _amount       = argument5;
var _type         = argument6;
var _set          = argument7;
var _use_left     = argument8;
var _use_right    = argument9;
var _tooltip	  = argument10;
var _tip_lines	  = argument11;

// Set item properties
item_definitions[_type_of_item, item_properties.sprite_gui]  = _sprite_gui;
item_definitions[_type_of_item, item_properties.sprite_held] = _sprite_held;
item_definitions[_type_of_item, item_properties.drop_item]	 = _drop_item;
item_definitions[_type_of_item, item_properties.name]        = _name;
item_definitions[_type_of_item, item_properties.amount]      = _amount;
item_definitions[_type_of_item, item_properties.type]        = _type;
item_definitions[_type_of_item, item_properties.set]         = _set;
item_definitions[_type_of_item, item_properties.use_left]    = _use_left;
item_definitions[_type_of_item, item_properties.use_right]   = _use_right;
item_definitions[_type_of_item, item_properties.tooltip]	 = _tooltip;
item_definitions[_type_of_item, item_properties.tip_lines]	 = _tip_lines;