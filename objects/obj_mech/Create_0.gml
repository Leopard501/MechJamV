enum MECH_STATE {
	WAITING,
	APPROACHING,
	ASCENDING,
	REPAIR,
	DESCENDING,
	STALLED,
	EXITING,
}

global.mech = self;

problems = ds_list_create();
problem_count = 0;
temperature = 0;
dialog = ds_list_create();
state = MECH_STATE.WAITING;
dialog_buffer_time = 0;
dialog_finished = false;
paused = false;

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

update_dialog = function(_event_num) {
	var _old_size = ds_list_size(dialog);
	event_user(_event_num);
	// if something added
	if (global.control.monitor_line < ds_list_size(dialog) - 1) {
		global.control.monitor_line = _old_size;
		dialog_buffer_time = 0;
		global.control.monitor_char = 0;
		dialog_finished = false;
	}
}

update_dialog(0);
update_temperature();