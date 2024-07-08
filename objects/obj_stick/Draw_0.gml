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

draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, 0, c_white, 1);