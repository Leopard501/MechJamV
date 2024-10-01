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

enum HOLO_STATE {
	NONE,
	SHORT,
	LONG,
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
monitor_line = -1;
monitor_char = 0;
held_thing = -1;
current_mech = 0;
monitor_hovered = false;
has_power = false;
power_counter = 0;
power_flicker_count = 7;
power_delay = 120;
grabber_sound = -1;
tool_sound = -1;
amb = -1;
holo_text = "";
holo_state = HOLO_STATE.NONE;

// return value to set is held in component
try_hold = function(_thing) {
	if (held_thing == -1) {
		held_thing = _thing;
		return true;
	} else if (held_thing == _thing) {
		return true;
	} else {
		return false;
	}
}

try_release = function(_thing) {
	if (held_thing == _thing) {
		held_thing = -1;	
	}
}

is_grab = function() {
	if (sel_grab == -1) return false;
	return grabbers[sel_grab].grabbed;	
}

set_grab = function(_new_val) {
	if (sel_grab == -1) return;
	
	if (grabbers[sel_grab].grabbed != _new_val) {
		if (_new_val) {
			audio_play_sound(snd_lever, 1, false);	
		} else {
			audio_play_sound(snd_lever_out, 1, false);	
		}
	}
	
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
	if (grabbers[sel_grab].tool.tool_type == TOOL_TYPE.SCRAPER) exit;

	with (grabbers[sel_grab].tool) {
		activated = _val;	
	}
}

get_tool = function() {
	if (sel_grab == -1) return -1;
	return grabbers[sel_grab].tool;
}

set_holo = function(_text, _state) {
	holo_text = _text;
	holo_state = _state;
}

line_len = function() {
	if (monitor_line == -1) return -1;
	return string_length(ds_list_find_value(global.mech.dialog, monitor_line)) - 1;
}

inc_char = function() {
	if (monitor_char < line_len()+1) {
		if (monitor_char % 2 == 0) {
			audio_play_sound(snd_dialog, 1, false, 0.2, 0, random_range(0.8, 1.2));
		}
		monitor_char++;
	}
}

swap_mech = function() {
	instance_destroy(global.mech);
	var _mech = -1;
	switch (current_mech) {
		// values are temp
		case 0:
			_mech = obj_mech_2;
			break;
		case 1:
			_mech = obj_mech_3;
			break;
		case 2:
			_mech = obj_mech_1b;
			break;
		case 3:
			_mech = obj_mech_5;
			break;
		case 4:
			_mech = obj_mech_4;
			break;
		case 5:
			_mech = obj_mech_1c;
			break;
		case 6:
			_mech = obj_mech_invis;
			break;
	}
	
	global.weather.swap();
	
	if (_mech == -1) {
		// todo: end game
		exit;	
	}
	// y is set in create
	instance_create_layer(525, 0, "mech", _mech);
	with (global.control) {
		current_mech++;
		monitor_line = -1;
		monitor_char = 0;
	}
}