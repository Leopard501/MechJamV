if (!held) {
	switch (monitor_sel) {
		case MONITOR_SEL.POWER:
			global.control.monitor_power = !global.control.monitor_power;
			break;	
		case MONITOR_SEL.LEFT:
			if (global.control.monitor_line > 0) {
				global.control.monitor_line -= 1;
				global.control.monitor_char = 0;
			}
			break;
		case MONITOR_SEL.RIGHT:
			if (global.control.monitor_line < ds_list_size(global.mech.dialog) - 1) {
				global.control.monitor_line += 1;
				global.control.monitor_char = 0;
			}
			break;
	}	
}

held = true;