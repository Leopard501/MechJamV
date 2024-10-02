var _power_idx = 0;
var _left_idx = 0;
var _right_idx = 0;

if (global.control.monitor_power && global.control.has_power) {
	/*if (tutorial && blinked && ds_list_size(global.mech.dialog) > 0) {
		image_index = 2;	
	} else {
		*/image_index = 0;/*
	}*/
	
	_power_idx = 1;
	if (global.control.monitor_line > 0) {
		_left_idx = 1;
	} 
	if (global.control.monitor_line < ds_list_size(global.mech.dialog)-1 && global.control.blink) {
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