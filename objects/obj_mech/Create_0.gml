global.mech = self;

problems = ds_list_create();
temperature = 0;
dialog = ds_list_create();

add_problem = function(_type, _disp_x, _disp_y) {
	var _problem = instance_create_layer(x + _disp_x, y + _disp_y, "problems", _type);
	ds_list_add(problems, _problem);
	_problem.mech = self;
	_problem.disp_x = _disp_x;
	_problem.disp_y = _disp_y;
}

update_temperature = function() {
	temperature = 40;
	for (var _i = 0; _i < ds_list_size(problems); _i++) {
		var _problem = ds_list_find_value(problems, _i);
		if (instance_exists(_problem)) {
			temperature += _problem.temperature;	
		}
	}
}

event_user(0);
update_temperature();