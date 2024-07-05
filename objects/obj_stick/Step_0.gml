var _dist = sqrt(sqr(x - mouse_x) + sqr(y - mouse_y));
var _angle = point_direction(x, y, mouse_x, mouse_y);

if (held && _dist > 10) {
	global.control.grab_speed = 0.5;
	if (_dist > 30) {
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
	global.control.grab_speed = 0;
	global.control.grab_dir = DIR.NONE;
}