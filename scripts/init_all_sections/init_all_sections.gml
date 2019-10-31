// Initialize our lists for the different template types we have
section_n_list    = ds_list_create();	// List of Null rooms
section_lr_list   = ds_list_create();	// List of Left Right rooms
section_lrb_list  = ds_list_create();	// List of Left Right Bottom rooms
section_lrt_list  = ds_list_create();	// List of Left Right Top rooms
section_lrtb_list = ds_list_create();	// List of Left Right Top Bottom rooms
section_l_list    = ds_list_create();	// List of Left rooms
section_r_list    = ds_list_create();	// List of Right rooms

// Store string representations for our templates in new lists
init_n_sections();
init_lr_sections();
init_lrb_sections();
init_lrt_sections();
init_lrtb_sections();
init_l_sections();
init_r_sections();