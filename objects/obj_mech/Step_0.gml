update_temperature();

switch (state) {
	case MECH_STATE.APPROACHING:
		if (x > room_width / 2) {
			x -= move_speed;	
		} else {
			state = MECH_STATE.ASCENDING;	
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
		break;
}