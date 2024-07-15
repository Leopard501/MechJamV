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
	switch (monitor_sel) {
		case MONITOR_SEL.SCREEN:
			if (global.control.monitor_line < 0) break;
			var _text = ds_list_find_value(global.mech.dialog, global.control.monitor_line);
			global.control.draw_holo_long(
				string_copy(_text, 1, global.control.monitor_char)
			);
			break;
		case MONITOR_SEL.POWER:
			global.control.draw_holo("Monitor Power");
			break;
		case MONITOR_SEL.LEFT:
			global.control.draw_holo("Previous Log");
			break;
		case MONITOR_SEL.RIGHT:
			global.control.draw_holo("Next Log");
			break;
	}	
}