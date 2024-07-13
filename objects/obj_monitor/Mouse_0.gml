if (!held) {
	switch (monitor_sel) {
		case MONITOR_SEL.POWER:
			global.control.monitor_power = !global.control.monitor_power;
			break;	
		case MONITOR_SEL.LEFT:
			global.control.monitor_line -= 1;
			break;
		case MONITOR_SEL.RIGHT:
			global.control.monitor_line += 1;
			break;
	}	
	global.control.monitor_line = clamp(global.control.monitor_line, 0, ds_list_size(global.mech.dialog) - 1);
}

held = true;