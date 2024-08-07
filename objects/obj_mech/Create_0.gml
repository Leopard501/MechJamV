enum MECH_STATE {
	WAITING,
	APPROACHING,
	ASCENDING,
	REPAIR,
	DESCENDING,
	STALLED,
	EXITING,
	SPECIAL,
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
lift_sound = snd_lp_mechlift;

problem_loops = [
	snd_lp_parasite,
	snd_lp_steam,
	snd_lp_fire,
	snd_lp_sparks,
	snd_lp_drip,
]

state_control = function() {
	switch (state) {
		case MECH_STATE.WAITING:
			if ((dialog_finished || !global.control.monitor_power) && !paused) {
				state = MECH_STATE.APPROACHING;	
				if (music != noone) {
					audio_play_sound(music, 1, false);	
				}
			}
			break;
		case MECH_STATE.APPROACHING:
			if (x > room_width / 2) {
				x -= move_speed;	
			} else {
				state = MECH_STATE.ASCENDING;	
				update_dialog(1);
				lift_sound = audio_play_sound(snd_lp_mechlift, 1, true);
				audio_play_sound(snd_mechlift_start, 1, false);
			}
			break;
		case MECH_STATE.ASCENDING:
			if (y > sprite_height / 2) {
				y -= ascend_speed;	
			} else {
				state = MECH_STATE.REPAIR;
				audio_stop_sound(lift_sound);
				audio_play_sound(snd_mechlift_stop, 1, false);
			}
			break;
		case MECH_STATE.REPAIR:
			if (problem_count == 0) {
				state = MECH_STATE.STALLED;
				update_dialog(2);
			}
			break;
		case MECH_STATE.STALLED:
			if (dialog_finished || !global.control.monitor_power) {
				lift_sound = audio_play_sound(snd_lp_mechlift, 1, true);
				audio_play_sound(snd_mechlift_start, 1, false);
				state = MECH_STATE.DESCENDING;	
			}
			break;
		case MECH_STATE.DESCENDING:
			if (y < room_height - sprite_height / 2) {
				y += ascend_speed;	
			} else {
				if (audio_is_playing(lift_sound)) {
					audio_stop_sound(lift_sound);
					audio_play_sound(snd_mechlift_stop, 1, false);
				}
				if (dialog_finished || !global.control.monitor_power) {
					state = MECH_STATE.EXITING;
					update_dialog(3);
				}
			}
			break;
		case MECH_STATE.EXITING:
			x -= move_speed;
			if (x < -sprite_width && (dialog_finished || !global.control.monitor_power)) {
				global.control.swap_mech();	
			}
			break;
	}
}

dialog_control = function() {
	if (dialog_finished) return;
	// if not finished showing chars
	if (global.control.monitor_char < global.control.line_len()) return;
	
	// if before end
	if (global.control.monitor_line < ds_list_size(dialog) - 1) { 
		dialog_buffer_time++;
	} else if (dialog_buffer_time > dialog_buffer_duration) {
		dialog_finished = true;	
	} else {
		dialog_buffer_time++;	
	}
}

sound_control = function() {
	var _loop_sounds = array_create(array_length(problem_loops), -1);

	for (var _i = 0; _i < ds_list_size(problems); _i++) {
		var _problem = ds_list_find_value(problems, _i);
		if (instance_exists(_problem) && _problem.sound_loop_idx != -1) {
			_loop_sounds[_problem.sound_loop_idx] = _problem.sound_loop;
		}
	}

	for (var _i = 0; _i < array_length(_loop_sounds); _i++) {
		if (_loop_sounds[_i] != -1) {
			if (!audio_is_playing(problem_loops[_i])) {
				problem_loops[_i] = audio_play_sound(_loop_sounds[_i], 1, true, 0);	
			} else {
				var _v = 1 - clamp((x - (room_width / 2)) / (room_width / 2 + 100), 0, 1);
				audio_sound_gain(problem_loops[_i], _v, 0)
			}
		} else {
			if (audio_is_playing(problem_loops[_i])) {
				audio_stop_sound(problem_loops[_i]);	
			}
		}
	}
}

add_problem = function(_type, _disp_x, _disp_y) {
	var _problem = instance_create_layer(_disp_x, _disp_y, "problems", _type);
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
	if (_event_num > -1) { 
		var _old_size = ds_list_size(dialog);
		event_user(_event_num);
		if (ds_list_size(dialog) > _old_size) {
			global.control.monitor_line = _old_size;
		}
	}

	dialog_buffer_time = 0;
	global.control.monitor_char = 0;
	dialog_finished = false;
}

update_dialog(0);
update_temperature();