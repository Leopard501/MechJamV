var _power_idx = 0;
var _left_idx = 0;
var _right_idx = 0;

if (global.control.monitor_power && global.control.has_power) {
	if (tutorial && blinked && ds_list_size(global.mech.dialog) > 0) {
		image_index = 2;	
	} else {
		image_index = 0;
	}
	
	if (blink_time == 15) {
		blink_time = 0;
		blinked = !blinked;
	}
	blink_time++;
	
	_power_idx = 1;
	if (global.control.monitor_line > 0) {
		_left_idx = 1;
	} 
	if (global.control.monitor_line < ds_list_size(global.mech.dialog)-1 && blinked) {
		_right_idx = 1;
	}
	if (held) {
		switch (monitor_sel) {
			case MONITOR_SEL.POWER:
				_power_idx = 2;
				break;	
			case MONITOR_SEL.LEFT:
				_left_idx = 2;
				break;
			case MONITOR_SEL.RIGHT:
				_right_idx = 2;
				break;
		}
	}
} else {
	image_index = 1;
}

draw_self();
draw_sprite(spr_m_power_button, _power_idx, x, y);
draw_sprite(spr_m_left_button, _left_idx, x, y);
draw_sprite(spr_m_right_button, _right_idx, x, y);

if (global.control.monitor_hovered && ds_list_size(global.mech.dialog) > 0) {
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