if (grabber != -1 && grabber.mirrored) {
	sprite_index = mirror_sprite;
} else {
	sprite_index = main_sprite;
}

if (activated) {
	event_user(0);	
}

draw_self();

if (hovered && global.control.holo_state == HOLO_STATE.NONE) {
	global.control.set_holo(title, HOLO_STATE.SHORT);
}