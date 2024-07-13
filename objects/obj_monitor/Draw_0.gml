if (held && monitor_sel != MONITOR_SEL.SCREEN) {
	switch (monitor_sel) {
		case MONITOR_SEL.POWER:
			button_index = 1;
			break;	
		case MONITOR_SEL.LEFT:
			button_index = 2;
			break;
		case MONITOR_SEL.RIGHT:
			button_index = 3;
			break;
	}
} else {
	button_index = 0;	
}

if (global.control.monitor_power) {
	image_index = 0;	
} else {
	image_index = 1;	
}

draw_self();
draw_sprite(spr_monitor_buttons, button_index, x, y);

if (hovered) {
	var _text = "";
	switch (monitor_sel) {
		case MONITOR_SEL.SCREEN:
			_text = "Monitor Text!";
			break;
		case MONITOR_SEL.POWER:
			_text = "Monitor Power";
			break;
		case MONITOR_SEL.LEFT:
			_text = "Previous Log";
			break;
		case MONITOR_SEL.RIGHT:
			_text = "Next Log";
			break;
	}
	global.control.draw_holo(_text);
}