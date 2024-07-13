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
	inst_grabber_left,
	inst_grabber_ceiling,
	inst_grabber_floor,
	inst_grabber_right,
]

sel_grab = -1;
grab_speed = 1;
grab_dir = DIR.NONE;
sel_fluid = FLUID.COOLANT;
c_pressure = 0;
o_pressure = 0;
monitor_power = true;

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

draw_holo = function(_text) {
	if (!monitor_power) exit;
	
	draw_set_color(0x004709);
	draw_set_alpha(0.9);
	
	draw_rectangle(x - 60, y - 2, x + 60, y + 10, false);
	
	draw_set_alpha(0.5);
	
	draw_triangle(x - 60, y + 10, x + 60, y + 10, x, y + 20, false);
	
	draw_set_alpha(1);
	draw_set_color(c_lime);
	draw_set_font(fnt_holo);
	draw_set_halign(fa_center);
	
	draw_text(x, y, _text);
	
	draw_set_color(c_white);
}