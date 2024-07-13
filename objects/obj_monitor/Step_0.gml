if (point_in_rectangle(mouse_x, mouse_y, 33, 206, 45, 213)) {
	monitor_sel = MONITOR_SEL.POWER;
} else if (point_in_rectangle(mouse_x, mouse_y, 66, 199, 77, 207)) {
	monitor_sel = MONITOR_SEL.LEFT;
} else if (point_in_rectangle(mouse_x, mouse_y, 67, 197, 87, 204)) {
	monitor_sel = MONITOR_SEL.RIGHT;
} else {
	monitor_sel = MONITOR_SEL.SCREEN;	
}