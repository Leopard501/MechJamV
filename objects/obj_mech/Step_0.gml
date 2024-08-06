update_temperature();

#region state_machine

switch (state) {
	case MECH_STATE.WAITING:
		if (dialog_finished && !paused) {
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
			state = MECH_STATE.DESCENDING;
			update_dialog(2);
			lift_sound = audio_play_sound(snd_lp_mechlift, 1, true);
			audio_play_sound(snd_mechlift_start, 1, false);
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
			if (dialog_finished) {
				state = MECH_STATE.STALLED;
				update_dialog(3);
			}
		}
		break;
	case MECH_STATE.STALLED:
		if (dialog_finished) {
			state = MECH_STATE.EXITING;	
		}
		break;
	case MECH_STATE.EXITING:
		x -= move_speed;
		if (x < -sprite_width && dialog_finished) {
			global.control.swap_mech();	
		}
		break;
}

#endregion

#region dialog_control

if (!dialog_finished) {
	// if finished showing chars
	if (global.control.monitor_char >= global.control.line_len()) {
		// if before fix
		if (global.control.monitor_line < ds_list_size(dialog) - 1) { 
			dialog_buffer_time++;
			// if exceeded buffer time
			if (dialog_buffer_time > dialog_buffer_duration) {
				dialog_buffer_time = 0;
				global.control.monitor_line++;
				global.control.monitor_char = 0;
				//audio_play_sound(snd_dialog, 1, false);
			}
		} else if (dialog_buffer_time > dialog_buffer_duration) {
			dialog_finished = true;	
		} else {
			dialog_buffer_time++;	
		}
	}
}

#endregion

#region problem_loops

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

#endregion