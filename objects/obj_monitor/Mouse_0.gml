if (!held) {
	switch (monitor_sel) {
		case MONITOR_SEL.POWER:
			global.control.monitor_power = !global.control.monitor_power;
			break;	
		case MONITOR_SEL.LEFT:
			
			break;
		case MONITOR_SEL.RIGHT:
			
			break;
	}	
}

held = true;