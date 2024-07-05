if (sel_grab == -1) exit;

switch (grab_dir) {
	case DIR.RIGHT:
		with (grabbers[sel_grab]) {
			x += max_speed;
		}
		break;
	case DIR.LEFT:
		with (grabbers[sel_grab]) {
			x -= max_speed;	
		}
		break;
	case DIR.UP:
		with (grabbers[sel_grab]) {
			y -= max_speed;
		}
		break;
	case DIR.DOWN:
		with (grabbers[sel_grab]) {
			y += max_speed;	
		}
		break;
}