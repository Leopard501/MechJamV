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
			update_dialog(2);
		}
		break;
	case MECH_STATE.DESCENDING:
		if (y < room_height - sprite_height / 2) {
			y += ascend_speed;	
		} else if (dialog_finished) {
			state = MECH_STATE.STALLED;
			update_dialog(3);
		}
		break;
	case MECH_STATE.STALLED:
		if (dialog_finished && !need_hit) {
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

dialog_control();

sound_control();