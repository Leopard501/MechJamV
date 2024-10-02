if (point_in_rectangle(mouse_x, mouse_y, 33, 206, 45, 213)) {
	monitor_sel = MONITOR_SEL.POWER;
} else if (point_in_rectangle(mouse_x, mouse_y, 66, 199, 77, 207) && 
		global.control.monitor_line > 0) {
	monitor_sel = MONITOR_SEL.LEFT;
} else if (point_in_rectangle(mouse_x, mouse_y, 77, 197, 87, 204) && 
		global.control.monitor_line < ds_list_size(global.mech.dialog)-1) {
	monitor_sel = MONITOR_SEL.RIGHT;
} else {
	monitor_sel = MONITOR_SEL.SCREEN;
}

if (/*global.control.holo_state == HOLO_STATE.NONE && */(global.control.monitor_hovered || global.mech.dialog_forced)) {
	switch (monitor_sel) {
		case MONITOR_SEL.SCREEN:
			if (global.control.monitor_line < 0 || ds_list_size(global.mech.dialog) == 0) break;
			var _text = ds_list_find_value(global.mech.dialog, global.control.monitor_line);
			global.control.set_holo(
				string_copy(_text, 1, global.control.monitor_char), HOLO_STATE.LONG
			);
			break;
		case MONITOR_SEL.POWER:
			global.control.set_holo("Monitor Power", HOLO_STATE.SHORT);
			break;
		case MONITOR_SEL.LEFT:
			global.control.set_holo("Previous Log", HOLO_STATE.SHORT);
			break;
		case MONITOR_SEL.RIGHT:
			global.control.set_holo("Next Log", HOLO_STATE.SHORT);
			break;
	}	
}