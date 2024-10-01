var _action;
if (global.control.is_grab()) {
	image_index = 1;	
	_action = "Release";
} else {
	image_index = 0;	
	_action = "Grab";
}

draw_self();

var _d = _action;
if (global.control.sel_grab != -1) {
	var _hn = global.control.grabbers[global.control.sel_grab].hovering_name;
	// hovered exists & not grabbing nothing
	if (_hn != -1 && !(global.control.get_tool() == -1 && global.control.is_grab())) {
		_d = $"{_action} {_hn}";
	}
}

if (held || hovered) {
	global.control.set_holo(_d, HOLO_STATE.SHORT);
}