if (!global.control.monitor_power || global.control.monitor_line < 0) exit;

draw_set_color(c_lime);
draw_set_font(fnt_mon);
draw_set_halign(fa_left);

var _text = ds_list_find_value(global.mech.dialog, global.control.monitor_line);
draw_text_ext_transformed(
	29, 171, 
	string_copy(_text, 1, global.control.monitor_char),
	3, 47, 
	1, 1, 12
);
global.control.monitor_char = clamp(
	global.control.monitor_char + 1, 1, string_length(_text)
);

draw_set_color(c_white);