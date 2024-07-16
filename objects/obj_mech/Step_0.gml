update_temperature();

#region state_machine

switch (state) {
	case MECH_STATE.APPROACHING:
		if (x > room_width / 2) {
			x -= move_speed;	
		} else {
			state = MECH_STATE.ASCENDING;	
			global.control.monitor_line = 0;
		}
		break;
	case MECH_STATE.ASCENDING:
		if (y > sprite_height / 2) {
			y -= ascend_speed;	
		} else {
			state = MECH_STATE.REPAIR;
		}
		break;
	case MECH_STATE.REPAIR:
		if (problem_count == 0) {
			state = MECH_STATE.DESCENDING;	
			global.control.monitor_line = fix_dialog_start;
			global.control.monitor_char = 0;
			dialog_finished = false;
		}
		break;
	case MECH_STATE.DESCENDING:
		if (y < room_height - sprite_height / 2) {
			y += ascend_speed;	
		} else {
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

if (dialog_finished) exit;

// if finished showing chars
if (global.control.monitor_char >= global.control.line_len()) {
	// if before fix
	if (global.control.monitor_line < get_last_line_num()) { 
		dialog_buffer_time++;
		// if exceeded buffer time
		if (dialog_buffer_time > dialog_buffer_duration) {
			dialog_buffer_time = 0;
			global.control.monitor_line++;
			global.control.monitor_char = 0;
		}
	} else {
		dialog_finished = true;	
	}
}

#endregion