draw_self();

if (hovered && global.control.holo_state == HOLO_STATE.NONE) {
	global.control.set_holo(description, HOLO_STATE.SHORT);
}