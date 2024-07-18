var _dist = sqrt(sqr(191 - mouse_x) + sqr(191 - mouse_y));
var _angle = point_direction(191, 191, mouse_x, mouse_y);

if (held && _dist > 5) {
	if (global.control.sel_grab > -1) {
		with (global.control.grabbers[global.control.sel_grab]) {
			moving = true;	
		}
	}
	global.control.tutorial[2] = true;
	global.control.grab_speed = 0.5;
	if (_dist > 20) {
		global.control.grab_speed = 1;
	}
	if ((_angle >= 0 && _angle <= 45) || (_angle > 315 && _angle <= 360)) {
		global.control.grab_dir = DIR.RIGHT;
	} else if (_angle > 45 && _angle <= 135) {
		global.control.grab_dir = DIR.UP;	
	} else if (_angle > 135 && _angle <= 215) {
		global.control.grab_dir = DIR.LEFT;	
	} else if (_angle > 215 && _angle <= 315) {
		global.control.grab_dir = DIR.DOWN;	
	}
} else {
	if (global.control.sel_grab > -1) {
		with (global.control.grabbers[global.control.sel_grab]) {
			moving = false;	
		}
	}
	global.control.grab_speed = 0;
	global.control.grab_dir = DIR.NONE;
}