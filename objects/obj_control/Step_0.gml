if (sel_grab == -1) exit;

switch (grab_dir) {
	case DIR.RIGHT:
		with (grabbers[sel_grab]) {
			if (x < max_x) {
				x += x_speed * global.control.grab_speed;
			}
		}
		break;
	case DIR.LEFT:
		with (grabbers[sel_grab]) {
			if (x > min_x) {
				x -= x_speed * global.control.grab_speed;	
			}
		}
		break;
	case DIR.UP:
		with (grabbers[sel_grab]) {
			if (y > min_y) {
				y -= y_speed * global.control.grab_speed;
			}
		}
		break;
	case DIR.DOWN:
		with (grabbers[sel_grab]) {
			if (y < max_y) {
				y += y_speed * global.control.grab_speed;	
			}
		}
		break;
}