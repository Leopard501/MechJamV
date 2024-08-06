image_index = global.control.sel_grab + 1;

draw_self();

if (!hovered) exit;

if (mouse_x < 174) {
	global.control.draw_holo("Select Left Grabber");
} else if (mouse_x < 191) {
	global.control.draw_holo("Select Ceiling Grabber");
} else if (mouse_x < 208) {
	global.control.draw_holo("Select Floor Grabber");
} else {
	global.control.draw_holo("Select Right Grabber");
}