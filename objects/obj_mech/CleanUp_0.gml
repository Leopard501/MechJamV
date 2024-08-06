for (var _i = 0; _i < ds_list_size(problems); _i++) {
	var _problem = ds_list_find_value(problems, _i);
	if (instance_exists(_problem)) {
		instance_destroy(_problem);	
	}
}

ds_list_destroy(problems);
ds_list_destroy(dialog);