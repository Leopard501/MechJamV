if (grabbed) {
	image_index = 1;	
} else {
	image_index = 0;	
}

if (global.control.sel_grab != -1 && global.control.sel_grab == idx && global.control.has_power) {
	image_index += 2;
}

if (!mirrored) {
	draw_line_width_color(
		x, y - sprite_get_bbox_top(sprite_index), 
		x, min_y - sprite_height / 2,
		2, #706665, #706665
	);	
}

draw_self();

if (hovered && global.control.holo_state == HOLO_STATE.NONE) {
	global.control.set_holo(title, HOLO_STATE.SHORT);
}