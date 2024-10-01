image_index = global.control.sel_grab + 1;

draw_self();

if (!hovered) exit;

var _d = "";

if (mouse_x < 174) {
	_d = "Select Left Grabber";
} else if (mouse_x < 191) {
	_d = "Select Ceiling Grabber";
} else if (mouse_x < 208) {
	_d = "Select Floor Grabber";
} else {
	_d = "Select Right Grabber";
}

global.control.set_holo(_d, HOLO_STATE.SHORT);