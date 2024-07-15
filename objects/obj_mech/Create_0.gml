enum MECH_STATE {
	APPROACHING,
	ASCENDING,
	REPAIR,
	DESCENDING,
	EXITING,
}

global.mech = self;

problems = ds_list_create();
problem_count = 0;
temperature = 0;
dialog = ds_list_create();
state = MECH_STATE.APPROACHING;
dialog_buffer_time = 0;
dialog_finished = false;

add_problem = function(_type, _disp_x, _disp_y) {
	var _problem = instance_create_layer(x + _disp_x, y + _disp_y, "problems", _type);
	ds_list_add(problems, _problem);
	problem_count++;
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

get_last_line_num = function() {
	if (state == MECH_STATE.ASCENDING || state == MECH_STATE.REPAIR) {
		return fix_dialog_start-1
	} else if (state == MECH_STATE.DESCENDING || state == MECH_STATE.EXITING) {
		return ds_list_size(dialog)-1;
	} else {
		return -1;
	}
}

event_user(0);
update_temperature();