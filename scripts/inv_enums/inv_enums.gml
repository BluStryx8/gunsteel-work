///@desc Define enums

// Types of items
enum item_type
{
	none,
	
	// Weapons
	pistol_1911,
	glock,
	uzi,
	mad_taurus,
	desert_eagle,
	ak47,
	m4,
	p90,
	famas,
	remington_870,
	mossberg_500,
	omark_44,
	tesro,
	minigun,
	w_length,
	
	// Consumables
	potion,
	ammo_crate,
	c_length,
	// Ores
	ore_iron,
	
	// Bars
	bar_iron,
	
	// Length enum for reference
	length
}

// Properties of items
enum item_properties
{
	sprite_gui,
	sprite_held,
	drop_item,
	name,
	amount,
	type,
	set,
	use_left,
	use_right,
	tooltip,
	tip_lines,
	// Length enum for reference
	length
}