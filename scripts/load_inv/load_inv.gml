with (obj_inventory_manager)
{
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

	for (var _n = 0; _n < item_type.length; _n++)
	{
		item_definitions[_n, item_properties.amount] = ini_read_real("amount", "item" + string(_n), 0)
	}
	ini_close()
}