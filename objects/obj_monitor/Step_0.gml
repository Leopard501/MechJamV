if (point_in_rectangle(mouse_x, mouse_y, 28, 203, 40, 210)) {
	monitor_sel = MONITOR_SEL.POWER;
} else if (point_in_rectangle(mouse_x, mouse_y, 61, 196, 72, 204)) {
	monitor_sel = MONITOR_SEL.LEFT;
} else if (point_in_rectangle(mouse_x, mouse_y, 62, 194, 82, 201)) {
	monitor_sel = MONITOR_SEL.RIGHT;
} else {
	monitor_sel = MONITOR_SEL.SCREEN;	
}