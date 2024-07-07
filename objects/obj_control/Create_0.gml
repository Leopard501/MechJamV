enum DIR {
	NONE,
	UP,
	DOWN,
	LEFT,
	RIGHT,
}

enum FLUID {
	NONE,
	COOLANT,
	OIL,
	FUEL,
}

global.control = self;

grabbers = [
	inst_grabber_ceiling,
	inst_grabber_left,
	inst_grabber_right,
	inst_grabber_floor,
]

sel_grab = -1;
grab_speed = 1;
grab_dir = DIR.NONE
sel_fluid = FLUID.NONE

is_grab = function() {
	if (sel_grab == -1) return false;
	return grabbers[sel_grab].grabbed;	
}

set_grab = function(_new_val) {
	if (sel_grab == -1) return;
	
	if (!_new_val) {
		grabbers[sel_grab].release();
	} else if (!grabbers[sel_grab].grabbed) {
		grabbers[sel_grab].grab_pulse = true;	
	}
	
	grabbers[sel_grab].grabbed = _new_val;
}

set_activated = function(_val) {
	if (sel_grab == -1) exit;
	if (grabbers[sel_grab].tool == -1) exit;

	with (grabbers[sel_grab].tool) {
		activated = _val;	
	}
}

get_tool = function() {
	if (sel_grab == -1) return -1;
	return grabbers[sel_grab].tool;
}