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
	ak47,
	m4,
	p90,
	remington_870,
	mossberg_500,
	omark_44,
	tesro,
	minigun,
	
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
	name,
	amount,
	type,
	set,
	use_left,
	use_right,
	
	// Length enum for reference
	length
}