/// @description Initialise Inventory
inv_init();

active_item = 0;
change_check = 0;
global.in_inv = false

inv_row = 1
inv_column = 1
spr_hotbar_height = 76

cell_width = 64
divider_width = 6

selected_cell = -1
pickup_item = -1
item_in_hand = false
item_in_slot = false
old_item = -1

logo_alpha = 0

global.settings = false


//loads inventory
ini_open("inventory_save.ini")
inventory[0] = ini_read_string("item","item1",item_type.none)
inventory[1] = ini_read_string("item","item2",item_type.none)
inventory[2] = ini_read_string("item","item3",item_type.none)
inventory[3] = ini_read_string("item","item4",item_type.none)
inventory[4] = ini_read_string("item","item5",item_type.none)
inventory[5] = ini_read_string("item","item6",item_type.none)
inventory[6] = ini_read_string("item","item7",item_type.none)
inventory[7] = ini_read_string("item","item8",item_type.none)
inventory[8] = ini_read_string("item","item9",item_type.none)
inventory[9] = ini_read_string("item","item10",item_type.none)
inventory[10] = ini_read_string("item","item11",item_type.none)
inventory[11] = ini_read_string("item","item12",item_type.none)
inventory[12] = ini_read_string("item","item13",item_type.none)
inventory[13] = ini_read_string("item","item14",item_type.none)
inventory[14] = ini_read_string("item","item15",item_type.none)

item_definitions[inventory[0], item_properties.amount] = ini_read_real("amount", "item1",1)
item_definitions[inventory[1], item_properties.amount] = ini_read_real("amount", "item2",1)
item_definitions[inventory[2], item_properties.amount] = ini_read_real("amount", "item3",1)
item_definitions[inventory[3], item_properties.amount] = ini_read_real("amount", "item4",1)
item_definitions[inventory[4], item_properties.amount] = ini_read_real("amount", "item5",1)
item_definitions[inventory[5], item_properties.amount] = ini_read_real("amount", "item6",1)
item_definitions[inventory[6], item_properties.amount] = ini_read_real("amount", "item7",1)
item_definitions[inventory[7], item_properties.amount] = ini_read_real("amount", "item8",1)
item_definitions[inventory[8], item_properties.amount] = ini_read_real("amount", "item9",1)
item_definitions[inventory[9], item_properties.amount] = ini_read_real("amount", "item10",1)
item_definitions[inventory[10], item_properties.amount] = ini_read_real("amount", "item11",1)
item_definitions[inventory[11], item_properties.amount] = ini_read_real("amount", "item12",1)
item_definitions[inventory[12], item_properties.amount] = ini_read_real("amount", "item13",1)
item_definitions[inventory[13], item_properties.amount] = ini_read_real("amount", "item14",1)
item_definitions[inventory[14], item_properties.amount] = ini_read_real("amount", "item15",1)

ini_close()