if (mouse_x < 174) {
	global.control.sel_grab = 0;
} else if (mouse_x < 191) {
	global.control.sel_grab = 1;	
} else if (mouse_x < 208) {
	global.control.sel_grab = 2;
} else {
	global.control.sel_grab = 3;
}

global.control.tutorial_1 = true;