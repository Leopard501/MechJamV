switch (global.control.grab_dir) {
	case DIR.NONE:
		image_index = 0;
		break;
	case DIR.UP:
		image_index = 1;
		break;
	case DIR.DOWN:
		image_index = 2;
		break;
	case DIR.RIGHT:
		image_index = 3;
		break;
	case DIR.LEFT:
		image_index = 4;
		break;
}

draw_sprite(sprite_index, -1, x, y);