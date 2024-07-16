if (!held) {
	switch (monitor_sel) {
		case MONITOR_SEL.POWER:
			global.control.monitor_power = !global.control.monitor_power;
			break;	
		case MONITOR_SEL.LEFT:
			if (global.control.monitor_line > 0) {
				global.control.monitor_line -= 1;
				global.control.monitor_char = global.control.line_len()+1;
			}
			break;
		case MONITOR_SEL.RIGHT:
			if (global.control.monitor_line < global.mech.get_last_line_num()) {
				global.control.monitor_line += 1;
				global.control.monitor_char = global.control.line_len()+1;
			}
			break;
	}	
}

held = true;