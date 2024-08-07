update_temperature();

#region state_machine

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
				state = MECH_STATE.SPECIAL;
				update_dialog(3);
			}
		}
		break;
	case MECH_STATE.SPECIAL:
		if ((dialog_finished || !global.control.monitor_power) && !need_hit) {
			state = MECH_STATE.EXITING;	
		}
		break;
	case MECH_STATE.EXITING:
		x -= move_speed;
		if (x < -sprite_width && (dialog_finished || !global.control.monitor_power)) {
			global.control.swap_mech();	
		}
		break;
}

#endregion

dialog_control();

sound_control();