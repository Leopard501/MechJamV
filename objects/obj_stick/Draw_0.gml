switch (global.control.grab_dir) {
	case DIR.NONE:
		image_index = 0;
		break;
	case DIR.UP:
		if (global.control.grab_speed > 0.5) {
			image_index = 5;
		} else {
			image_index = 1;
		}
		break;
	case DIR.DOWN:
		if (global.control.grab_speed > 0.5) {
			image_index = 6;
		} else {
			image_index = 2;
		}
		break;
	case DIR.RIGHT:
		if (global.control.grab_speed > 0.5) {
			image_index = 7;
		} else {
			image_index = 3;
		}
		break;
	case DIR.LEFT:
		if (global.control.grab_speed > 0.5) {
			image_index = 8;
		} else {
			image_index = 4;
		}
		break;
}

draw_self();

var _d = description;
if (global.control.sel_grab != -1) {
	var _hn = global.control.grabbers[global.control.sel_grab].hovering_name;
	if (_hn != -1) {
		_d = _hn;
		if (global.control.get_tool() != -1) {
			_d = $"Move {_hn}";	
		}
	}
}

if (held || hovered) {
	global.control.draw_holo(_d);
}