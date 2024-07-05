if (global.control.is_grab()) {
	image_index = 0;	
} else {
	image_index = 1;	
}

draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, 1, c_white, 1);