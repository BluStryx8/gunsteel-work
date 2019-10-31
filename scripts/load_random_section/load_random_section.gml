/// @param type The type of section to load for

// Grab section type from sections array
var _section_type = argument0;

switch(_section_type)
{
	case 0:
		var _section = floor(random(ds_list_size(section_n_list)));
		s_id = "N_" + string(_section);
		return ds_list_find_value(section_n_list, _section);
		break;
	case 1:
		var _section = floor(random(ds_list_size(section_lr_list)));
		s_id = "LR_" + string(_section);
		return ds_list_find_value(section_lr_list, _section);
		break;
	case 2:
		var _section = floor(random(ds_list_size(section_lrb_list)));
		s_id = "LRB_" + string(_section);
		return ds_list_find_value(section_lrb_list, _section);
		break;
	case 3:
		var _section = floor(random(ds_list_size(section_lrt_list)));
		s_id = "LRT_" + string(_section);
		return ds_list_find_value(section_lrt_list, _section);
		break;
	case 4:
		var _section = floor(random(ds_list_size(section_lrtb_list)));
		s_id = "LRTB_" + string(_section);
		return ds_list_find_value(section_lrtb_list, _section);
		break;
	case 5:
		var _section = floor(random(ds_list_size(section_l_list)));
		s_id = "L_" + string(_section);
		return ds_list_find_value(section_l_list, _section);
		break;
	case 6:
		var _section = floor(random(ds_list_size(section_r_list)));
		s_id = "R_" + string(_section);
		return ds_list_find_value(section_r_list, _section);
		break;
}