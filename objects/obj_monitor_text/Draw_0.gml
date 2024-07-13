if (global.control.monitor_power) {	
	draw_set_color(c_lime);
	draw_set_font(fnt_mon);
	draw_set_halign(fa_left);

	draw_text_ext_transformed(
		24, 168, 
		ds_list_find_value(global.mech.dialog, global.control.monitor_line), 
		3, 47, 
		1, 1, 12
	);

	draw_set_color(c_white);
}