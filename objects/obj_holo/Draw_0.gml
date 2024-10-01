#region light

if (global.control.monitor_power && global.control.holo_state != HOLO_STATE.NONE) {
	image_index = 0;	
} else {
	image_index = 1;	
}

draw_self();

#endregion

#region holo_text

with (global.control) {
	if (monitor_power && has_power && holo_state != HOLO_STATE.NONE) {
		draw_set_color(0x004709);
		draw_set_alpha(0.9);
		var _width = holo_state == HOLO_STATE.SHORT ? 60 : 100;
		var _y_top = holo_state == HOLO_STATE.SHORT ? 2 : 35;
		draw_rectangle(x - _width, y - _y_top, x + _width, y + 10, false);
		draw_set_alpha(0.5);
		draw_triangle(x - _width, y + 10, x + _width, y + 10, x, 134, false);
		draw_set_alpha(1);
		draw_set_color(c_lime);
		draw_set_font(fnt_holo);
		switch holo_state {
			case HOLO_STATE.SHORT:				
				draw_set_halign(fa_center);
				draw_text(x, y - 1, holo_text);
				break;
			case HOLO_STATE.LONG:
				draw_set_halign(fa_left);
				draw_text_ext(x - 95, y - 30, holo_text, 12, 190);
				break;
		}
		draw_set_color(c_white);
	}

	holo_state = HOLO_STATE.NONE;
}

#endregion